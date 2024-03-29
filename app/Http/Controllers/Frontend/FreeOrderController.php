<?php

namespace App\Http\Controllers\Frontend;
use ZipArchive;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{Service, FreeOrder, FreeOrderServiceNote, FreeOrderDetails,OrderService, ImgExtension,FreeServiceImage};
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File as FacadesFile;
class FreeOrderController extends Controller
{
    public function index() {
        $service = OrderService::active()
            ->select('id', 'name', 'price')
            ->orderByRaw("CAST(price AS SIGNED) ASC")
            ->first();
        $order = FreeOrder::create([
            'slug' => mt_rand(1000000, 9999999),
            'order_service_id' => $service->id,
        ]);
        $all_services = Service::latest()->get();
        return view('website.dashboard.freeOrder.order', compact('order', 'all_services'));
    }
    
    public function update(Request $request, $id) {
        $order = FreeOrder::findOrFail($id);
        $service = OrderService::active()
            ->select('id', 'name', 'price')
            ->orderByRaw("CAST(price AS SIGNED) ASC")
            ->first();
        $order->update($request->all());
        $order->update(['order_service_id' => $service->id]);
        return redirect()->route('website.free-orders.show', $order->id);
    }


    public function show($id) {
        $order = FreeOrder::findOrFail($id);
        $services = OrderService::active()->select('id', 'name', 'price')->get();
        $selectedServices = $services->whereIn('id', $order->order_service_id)->all();
        $all_services = Service::latest()->get();
        return view('website.dashboard.freeOrder.orderShow', compact('order', 'services', 'selectedServices', 'all_services'));
    }

    public function newUpdate(Request $request, $id) {
        $order = FreeOrder::findOrFail($id);
        $order->update($request->only(['order_service_id']));
        return redirect()->route('website.free-orders.show', $order->id);
    }

    public function updateDetails(Request $request, $orderId) {
        //dd($request->all());
        $order = FreeOrder::findOrFail($orderId);
            foreach ($request->service_id as $key => $service) {
                $userName = $order->name . '_' . $order->email;
                $orderService = OrderService::findOrFail($service);
                $orderServiceAme = $orderService->name;
                $propertyName = $orderServiceAme . '_img';
    
                $referencePropertyName = $orderServiceAme . '_refs_img';
                $counts = count($request->$propertyName);
                $countImage = $counts;
                // Base image
                if ($request->hasFile($propertyName)) {
                    $images = $request->file($propertyName);
                    $allowedExtensions = ImgExtension::pluck('ext')->toArray();
                    foreach ($images as $image) {
                        $imageExtension = $image->getClientOriginalExtension();
                        if (!in_array($imageExtension, $allowedExtensions))
                            return redirect()->back()->withErrors(['error' => 'img ext not allowed'])->withInput();
                        $hashedFileName = $image->getClientOriginalName();
                        $filePath = $userName . '/' . $order->slug . '/' . $orderService->name . '/' . $hashedFileName;
                        Storage::disk('free_service_images')->put($filePath, file_get_contents($image));
                        $photo = new FreeServiceImage([
                            'free_order_id' => $order->id,
                            'order_service_id' => $orderService->id,
                            'image_path' => $filePath,
                            'type' => 'main'
                        ]);
                        $photo->save();
                    }
                }
    
                // Referance image
                 if ($request->hasFile($referencePropertyName)) {
                     $images = $request->file($referencePropertyName);
                     $allowedExtensions = ImgExtension::pluck('ext')->toArray();
                     foreach ($images as $image) {
                         $imageExtension = $image->getClientOriginalExtension();
                         if (!in_array($imageExtension, $allowedExtensions)) 
                             return redirect()->back()->withErrors(['error' => 'img ext not allowed'])->withInput();
                         $hashedFileName = 'Referance_' . $image->getClientOriginalName();
                         $filePath = $userName . '/' . $order->slug . '/' . $orderService->name . '/' . $hashedFileName;
                         Storage::disk('free_service_images')->put($filePath, file_get_contents($image));
                         $photo = new FreeServiceImage([
                             'free_order_id' => $order->id,
                             'order_service_id' => $orderService->id,
                             'image_path' => $filePath,
                             'type' => 'referance'
                         ]);
                         $photo->save();
                     }
                 }
                $orderDetails = FreeOrderDetails::create([
                    'free_order_id' => $order->id,
                    'order_service_id' => $orderService->id,
                    'price_offer' => null,
                    'photo_count' => $countImage,
                    'total' => ($countImage * $orderService->price),
                    'order_status' => FreeOrderDetails::FREE_ORDER
                ]);
                $orderServiceNotes = FreeOrderServiceNote::create([
                    'free_order_id' => $order->id,
                    'order_service_id' => $service,
                    'notes' => $request->notes[$key]
                ]);
            }
            $this->createZipFile($orderId);
        return redirect()->back()->with('success', 'Order details updated successfully');
    }

    public function createZipFile($order_id)
    {
        $order = FreeOrder::findOrFail($order_id);
        $user = $order->name . '_' . $order->email;
        $zipFileName = public_path('dashboard/img/free_order/' . $user . '/' . $order->slug . '.zip');
        $dirPath = public_path('dashboard/img/free_order/' . $user . '/' . $order->slug);

        if (is_dir($dirPath) && count(glob($dirPath . '/*'))) {
            $zip = new ZipArchive;
            if ($zip->open($zipFileName, ZipArchive::CREATE | ZipArchive::OVERWRITE) === true) {
                $files = FacadesFile::allFiles($dirPath);

                if (count($files) > 0) {
                    foreach ($files as $file) {
                        $fileName = basename($file);
                        $zip->addFile($file, $fileName);
                    }
                    $zip->close();
                }
            }
        }

        //\Mail::to($user->email)->send(new \App\Mail\MyTestMail($order));
    }
}