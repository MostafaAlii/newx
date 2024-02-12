<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $mailData['email'] . ' ' .  $mailData['phone']}}</title>
</head>
<body>
    <h1>{{$order->user->name}}</h1>
    
    <div class="form-group">
        <label for="name">Name:</label>
        <p class="form-control" id="name"> {{ $mailData['name'] }}</p>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <p class="form-control" id="email"> {{ $mailData['email'] }}</p>
    </div>
    <div class="form-group">
        <label for="website">Website:</label>
        <p class="form-control" id="website"> {{ $mailData['website'] }}</p>
    </div>
    <div class="form-group">
        <label for="phone">Phone:</label>
        <p class="form-control" id="phone"> {{ $mailData['phone'] }}</p>
    </div>
    <div class="form-group">
        <label for="message">Message</label>
        <textarea class="form-control" id="message" rows="3">{!! $mailData['message'] }!!}</textarea>
   </div>
</body>
</html>