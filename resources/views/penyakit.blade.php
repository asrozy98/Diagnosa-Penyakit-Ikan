
@extends('Templates/template')
@section('content')   
<h1><b>Daftar Penyakit:</b></h1>
<div id="tabelhasil">
        <table class="table table-striped table-dark">
        <thead class="thead-dark">
            <tr>
              <th scope="col">No</th>
              <th scope="col">Kode</th>
              <th scope="col">Nama Penyakit</th>
              <th scope="col">Penyebab</th>             
            </tr>
          </thead>
          @foreach($penyakit as $p)
          
          <tbody>
            <tr>   
              <th scope="row">{{$loop->iteration}}</th>
              <td>{{$p->kode}}</td>
              <td>{{$p->nama_penyakit}}</td>
              <td>{{$p->penyebab}}</td>
            </tr> 
            @endforeach  
          </tbody>
        </table>
      </div>
@endsection
