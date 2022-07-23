@extends('layouts.layout')
@section('title')
Tanjungsari | {{ $title }}
@endsection
@section('style')
<style>
  .container {
    text-align: center;
  }

  .center {
    text-align: center;
    list-style-position: inside;
  }

  ol li {
    margin-top: 10px;
  }
</style>
@endsection

@section('content')

@include('partials.jumbotron')

<div class="container">
  <h4>VISI :</h4>
  <p class="lead">TANJUNGSARI BANGKIT, BERDAYA DAN MANDIRI DIBIDANG EKONOMI, SOSIAL, BUDAYA DAN BERBASIS RELIGIUS
    ISLAMI.</p>
  <h4>MISI:</h4>
  <ol class="lead center">
    <li>Meningkatkan Profesionalisme Pelayanan Publik.</li>
    <li>Meningkatkan Kualitas Sumber Daya Manusia bagi Aparatur Pemerintah Desa dan Lembaga - Lembaga Desa.</li>
    <li>Meningkatkan Ketersediaan dan Kualitas InfraStruktur Pemerintah Desa.</li>
    <li>Penertiban Administrasi Pemerintah Desa.</li>
    <li>Meningkatkan Kerukunan Antar Umat Beragama.</li>
    <li>Meningkatkan Keamanan dan Ketertiban bagi Masyarakat Desa.</li>
    <li>Meningkatkan Pemberdayaan Masyarakat dan Sumber daya Manusia yang Lebih Baik.</li>
    <li>Meningkatkan Pembinaan Terhadap Karang Taruna Desa.</li>
    <li>Meningkatkan Pelayanan Masyarakat Dalam Bidang Kesehatan.</li>
    <li>Meningkatkan Sarana Pendidikan dibidang Keagamaan maupun Umum.</li>
  </ol>
</div>
@endsection