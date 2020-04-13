
@extends('Templates/template')
@section('content') 
 
<h1><b>Hasil Diagnosa:</b></h1> 
<div id="tabelhasil">
        <table class="table table-striped table-dark">
          <tbody>
            <tr>
           
              <th scope="row">Gejala</th>
              
                <td>@foreach($gejala as $g)
                <li>{{$g->nama}}</li>
                @endforeach
                </td>
            
            </tr>
            @foreach($penyakit as $p)
            <tr>
              <th scope="row">Penyakit</th>
                <td>{{$p->nama_penyakit}}</td>
            </tr>
            <tr>
              <th scope="row">Penyebab</th>
                <td>{{$p->penyebab}}</td>
            </tr> 
            @endforeach  
          </tbody>
        </table>
      </div>
@endsection
