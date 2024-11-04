@extends('layout.master')

@section('content')
  <div class="d-flex flex-column gap-4 " style="height: calc(100vh - 13.8rem);">
    <div class="d-flex align-items-center gap-4">
      <!-- Profile Image -->
      <div class="d-flex justify-content-center align-items-center">
        <img src="{{ $writer->image }}" 
        class="rounded-circle bg-white shadow-sm p-3 object-fit-cover" 
        style="height: 200px; width: 200px;"
        alt="{{ $writer->name }}">
      </div>
      
      <!-- Writer Info -->
      <div class="d-flex flex-column">
        <h2 class="fs-4 fw-bold mb-2">{{ $writer->name }}</h2>
        <p class="text-muted fs-5">Spesialis {{ $writer->specialization }}</p>
      </div>
    </div>
    {{-- Border --}}
    <hr class="my-2">
    {{-- Articles --}}
    <div class="d-flex flex-column gap-4">
      <div class="articles-container">
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
  </div>
@endsection