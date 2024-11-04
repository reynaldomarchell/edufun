@extends('layout.master')

@section('content')
<div class="container-fluid px-4" style="height: calc(100vh - 13.8rem);">
    <div class="row justify-content-center">
        <div class="col-12 col-lg-10">
            <!-- Header -->
            <h1 class="display-4 fw-semibold mb-5 fs-4">Our Writers:</h1>

            <!-- Writers Grid -->
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 justify-content-center">
                @foreach ($writers as $writer)
                    <div class="col">
                        <div class="text-center">
                            <!-- Profile Image -->
                            <div class="writer-image-wrapper mx-auto mb-4">
                                <a href="{{ route('writer.show', ['id' => $writer->id]) }}" >
                                    <img src="{{ $writer->image }}" 
                                    class="rounded-circle bg-white shadow-sm p-3" 
                                    alt="{{ $writer->name }}">
                                </a>
                            </div>
                            
                            <!-- Writer Info -->
                            <h2 class="fs-4 fw-bold mb-2">{{ $writer->name }}</h2>
                            <p class="text-muted fs-5">Spesialis {{ $writer->specialization }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection