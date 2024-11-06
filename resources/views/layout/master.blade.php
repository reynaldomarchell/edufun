<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>

    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}">
    <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <style>
        .logo-text {
            color: #2D3648;
            transition: all 0.3s ease;
            position: relative;
        }
        
        .logo-text:after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: 0;
            left: 0;
            background-color: #2D3648;
            transition: width 0.3s ease;
        }

        .logo-text:hover {
            transform: scale(1.05);
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        .logo-text:hover:after {
            width: 100%;
        }

        .nav-link.active {
            color: #4365a8 !important;
            position: relative;
        }
        .nav-link.active::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: #2D3648;
        }
        .writer-image-wrapper {
            width: 250px;
            height: 250px;
            transition: transform 0.2s ease-in-out;
        }

        .writer-image-wrapper:hover {
            transform: translateY(-5px);
        }

        .writer-image-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        @media (max-width: 768px) {
            .writer-image-wrapper {
                width: 200px;
                height: 200px;
            }

            h1.display-4 {
                font-size: calc(1.8rem + 1.5vw);
            }
        }

        @media (max-width: 576px) {
            .writer-image-wrapper {
                width: 180px;
                height: 180px;
            }
        }
    </style>
</head>
<body>
    @include('layout.header')
    
    <div class="container-fluid p-4 overflow-scroll" 
        {{-- style="max-height: calc(100vh - 11rem);" --}}
        >
        @yield('content')
    </div>
    
    @include('layout.footer')
</body>
</html>