<header class="sticky-top bg-white border-bottom">
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid px-4">
            <!-- Logo -->
            <a class="navbar-brand" href="/">
                <p class="fs-4 fw-bold m-0" style="color: #2D3648;">EduFun</p>
            </a>

            <!-- Mobile Toggle Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navigation Items -->
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav align-items-md-center gap-1 gap-md-3">
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ route('home.index') }}">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="{{ route('article.index', ['category' => 'IM']) }}">Interactive Multimedia</a></li>
                            <li><a class="dropdown-item" href="{{ route('article.index', ['category' => 'SE']) }}">Software Engineering</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('writer.index') }}">Writers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('about.index') }}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('popular.index') }}">Popular</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>