@extends('layouts.layout')

@section('title')
Tanjungsari | {{ $title }}
@endsection

@section('content')
<div class="maps">
  <iframe width="100%" height="450" frameborder="0" style="border:0"
    src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDf7fC8S7iheou_BbpDccLrJh0bRl0dyzw&q=Tanjungsari,+Salawu,+Tasikmalaya,+West+Java"
    allowfullscreen>

  </iframe>
</div>

<div class="container">
  <h2 style="margin-top: 40px; margin-bottom: 20px; text-align: center;">Wilayah</h2>
  <p class="lead">Desa Tanjungsari merupakan salah satu Desa yang berada di Wilayah Kecamatan Salawu Kabupaten
    Tasikmalaya dengan luas mencapai 578,3 Ha.</p>
  <p class="lead">Adapun batas-batas wilayah Desa Tanjungsari Kecamatan Salawu Kabupaten Tasikmalaya adalah sebagai
    berikut: </p>
  <ul class="lead">
    <li>Sebelah Utara : Desa Tanjungkarang dan Desa Nangtang (Kecamatan Cigalontang)</li>
    <li>Sebelah Timur : Desa Neglasari</li>
    <li>Sebelah Selatan : Desa Kawungsari dan Desa Sundawenang</li>
    <li>Sebelah Barat : Desa Kutawaringin</li>
  </ul>
  {{-- <p class="lead">Desa Cibatu merupakan desa yang berada Perbatasan Kecamatan cisaat dan Kecamatan Cicantayan
    sebagian
    besar wilayah Desa Cibatu adalah lahan Pertanian, dan Industri.</p> --}}
</div>
@endsection

@section('script')

@endsection