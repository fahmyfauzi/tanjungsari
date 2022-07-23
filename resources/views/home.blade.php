@extends('admin.layouts.adminapp')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">Dashboard</div>

        <div class="card-body">
            @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
            @endif

            Welcome {{ $user->name }}
        </div>
    </div>
</div>
@endsection