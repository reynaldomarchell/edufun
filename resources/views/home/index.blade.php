@extends('layout.master')

@section('content')
    <div class="d-flex flex-column gap-4">
        <div id="homeCarousel" class="carousel slide">
            <div class="carousel-inner rounded-3 ">
                <div class="carousel-item active">
                <img src="https://img.freepik.com/free-photo/revising-material_1098-19554.jpg?t=st=1730684037~exp=1730687637~hmac=bdfa4b0cc62cb5a2d9032d36d9acd8f9f1f637d220363471a7df7eec9f5d9041&w=1800" class="d-block w-100 object-fit-cover align-content-center" alt="image1" style="height: 60vh" >
                </div>
                <div class="carousel-item">
                <img src="https://img.freepik.com/free-photo/group-happy-friends-student-talking-about-knowledge-cafe_1150-3979.jpg?t=st=1730682682~exp=1730686282~hmac=3df26e49ebc84efb164d9b3adfbbc48e6e3b7f3ba9ff654692536c4e88998625&w=1800" class="d-block w-100 object-fit-cover align-content-center" alt="image2" style="height: 60vh">
                </div>
                <div class="carousel-item">
                <img src="https://img.freepik.com/free-photo/women-read-books-men-use-laptops-search-books-libraries_1150-24666.jpg?t=st=1730682701~exp=1730686301~hmac=a824d7154f0ca73fbba1a231759f7f14a797171a1e804c28e84a9e9982cf893c&w=1800" class="d-block w-100 object-fit-cover align-content-center" alt="image3" style="height: 60vh">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#homeCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#homeCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="articles-container">
            <h1 class="fw-semibold fs-4 mb-3">Article</h1>
            @foreach ($articles as $article)
                <div class="card mb-4 border-0 shadow-sm" style="width: 100%">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="{{ $article->image }}" 
                            class="img-fluid rounded-4 w-100 object-fit-cover"
                            style="height: 250px;" 
                            alt="{{ $article->title }}"
                            >
                        </div>
                        <div class="col-md-8">
                            <div class="card-body d-flex flex-column h-100 position-relative gap-4">
                                <div>
                                    <h5 class="card-title fs-4 mb-2">{{ $article->title }}</h5>
                                    <p class="text-muted mb-2">
                                        {{ $article->created_at->format('d M Y') }} | by: {{ $article->writer->name }}
                                    </p>
                                    <p class="card-text">
                                        {{ Str::limit($article->content, 150) }}
                                    </p>
                                </div>
                                <div class="mt-auto text-end">
                                    <a href="{{ route('article.show', ['id' => $article->id]) }}" 
                                    class="btn btn-dark rounded-pill px-4"
                                    style="background-color: #2D3648;">
                                        read more...
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

@endsection