<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    @viteReactRefresh
    @vite(['resources/sass/app.scss','resources/js/app.js'])
</head>
<body>
    <div class="d-flex flex-column min-vh-100">
        <header>
            @include('includes.header')
        </header>
        <div class="container flex-grow-1">
            @yield('content')
        </div>
        <footer class="container text-center">
            @include('includes.footer')
        </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>