@extends('Templates/template')
@section('content') 
<main role="main">
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-lg-12">
            <h2>Diagnosa</h2>
           
            <form method="POST" action="/hasil" name="diagnosa">
            @csrf
            <table>
              <tr>
                <th>Pilih</th>
                <th>Kode Gejala</th>
                <th>Nama Gejala</th>
              </tr>
            @foreach($query as $data) 
              <tr>
                <td><input type="checkbox" value="{{$data->kd_gejala}}" name="cek[]" >--> <br></td>
                <td>{{$data->kd_gejala}}</td>
                <td>{{$data->nama}}</td>
              </tr>
            @endforeach
              </tr>
            </table>
            
            <br />
            <input type="submit" class="btn btn-medium btn-primary" value="Cek Diagnosa" name="proses" />
            </form>
          </div>
        </div>
<br /><br />
      </main>
@endsection
