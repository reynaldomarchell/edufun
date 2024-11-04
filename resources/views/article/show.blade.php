@extends('layout.master')

@section('content')
  <div class="d-flex flex-column gap-2">
    <h1 class="fw-semibold fs-4 mb-3">{{ $article->title }}</h1>
    <div class="px-4">
      <div class="rounded-4 overflow-hidden mb-4">
        <img src="{{ $article->image }}" 
            alt="{{ $article->title }}"
            class="w-100 object-fit-cover"
            style="max-height: 500px;">
      </div>
      <p class="text-muted mb-2">
        {{ $article->created_at->format('d M Y') }} | by: {{ $article->writer->name }}
      </p>
      <p class="fs-5">
        {{ $article->content }}
      </p>
    </div>
  </div>

@endsection