@extends('layouts.layout')

@section('style')
<link rel="stylesheet" href="{{ asset('css/homepage.css') }}">
<style>
  .card img {
    height: 300px;
    object-fit: cover;
    object-position: center;
  }
</style>
@endsection

@section('title', 'Tanjungsari | Home')

@section('content')


<div class="jumbotron jumbotron-fluid" style="background-image: url({{ asset('img/back.png') }});">
  <div class="container">
    <h1 class="display-4">Kenali Desa kami Lebih Dekat Lagi</h1>
    <p class="lead">Desa Tanjungsari adalah desa di wilayah Kecamatan Salawu Kabupaten Tasikmalaya</p>
    {{-- <a class="btn btn-primary btn-xl" href="#" role="button">Learn More</a> --}}
  </div>
</div>

<div class="welcome mb-5">
  <div class="container">
    <div class="photo">
      <img src="{{ asset('img/photo.jpeg') }}" alt="">
    </div>
    <div class="text">
      <h2>Selamat Datang Di Website Kami</h2>
      <p>Kami senang anda sudah berkunjung, Semoga melalui situs
        web ini kami dapat memberikan segala informasi yang aktual dan terperbaharui langsung dari desa kami.
        Situs web ini merupakan salah satu wujud dari komitmen
        pemerintah desa, pada pentingnya komunikasi dan transparansi
        publik.</p>
      <h4>Atep Abdul Cholick, <span>Kepala Desa Tanjungsari</span></h4>
    </div>
  </div>
</div>

<div class="news">
  <div class="container">
    <h2> <span class="far fa-newspaper" style="color: crimson;"></span> Kabar Desa Terbaru</h2>
    <div class="row row-cols-1 row-cols-md-2">

      @foreach ($posts as $post)

      <div class="col mb-4">
        <div class="card h-100">
          <a href="{{ route('posts.post', $post->slug) }}"><img src="{{ asset( $post->thumbnail ) }}"
              class="card-img-top" alt=""></a>
          <div class="card-body">
            <h5 class="card-title"> <a href="{{ route('posts.post', $post->slug) }}"
                style="text-decoration: none;color: black;">{{
                Str::limit($post->judul , 50)
                }}</a></h5>
            <p class="card-text"> {!! Str::limit($post->content , 100, '.') !!} <a
                href=" {{ route('posts.post', $post->slug) }}"><span>baca selengkapnya...</span></a></p>
          </div>
        </div>
      </div>

      @endforeach

    </div>
  </div>
</div>
</div>



@endsection