@extends('Templates/template')
@section('content') 
<h1>Pilih Gejala Penyakit Pada ikan Anda</h1>

<form action="/proses/diagnosa" method="POST" >
@csrf
@method('patch')
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="G01" id="G01">
  <label class="form-check-label" for="G01">
    1. Kurang nafsu makan
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="G02" id="G02">
  <label class="form-check-label" for="G02">
    2. Efisiensi pakan buruk
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="G03" id="G03">
  <label class="form-check-label" for="G03">
    3. Perubahan warna kulit
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G04">
  <label class="form-check-label" for="G04">
    4. Kelainan bentuk tulang
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G05">
  <label class="form-check-label" for="G05">
    5. Perut kembung
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G06">
  <label class="form-check-label" for="G06">
    6. Rentan penyakit
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G07">
  <label class="form-check-label" for="G07">
    7. Sirip rontok
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G08">
  <label class="form-check-label" for="G08">
    8. Mata menonjol
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G09">
  <label class="form-check-label" for="G09">
    9. Megap-megap/lemas
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G10">
  <label class="form-check-label" for="G10">
    10. Tumbuh lambat
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G11">
  <label class="form-check-label" for="G11">
    11. Pendarahan kulit
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G12">
  <label class="form-check-label" for="G12">
    12. Iritasi
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G13">
  <label class="form-check-label" for="G13">
    13. Luka dibagian tubuh
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G14">
  <label class="form-check-label" for="G14">
    14. Berenang dipermukaan
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G15">
  <label class="form-check-label" for="G15">
    15. Ada benjolan dan pendarahan
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G16">
  <label class="form-check-label" for="G16">
    16. Adanya borok
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G17">
  <label class="form-check-label" for="G17">
    17. Telur gagal menetas
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G18">
  <label class="form-check-label" for="G18">
    18. Munculnya noktah benang-benang halus pada tubuh ikan
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G19">
  <label class="form-check-label" for="G19">
    19. Adanya lapisan kapur pada telur
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G20">
  <label class="form-check-label" for="G20">
    20. Ikan kehilangan sebagian tubuh posterionya
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G21">
  <label class="form-check-label" for="G21">
    21. Kondisi melemah
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G22">
  <label class="form-check-label" for="G22">
    22. Sering menggosok-gosokan tubuhnya di tepi atau dasar kolam
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G23">
  <label class="form-check-label" for="G23">
    23. Tubuhnya menjadi kurus
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G24">
  <label class="form-check-label" for="G24">
    24. Tampak bintik putih
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G25">
  <label class="form-check-label" for="G25">
    25. Nampak kista putih pada kulit dan insang ikan
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G26">
  <label class="form-check-label" for="G26">
    26. Ikan tampak kekurangan oksigen
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G27">
  <label class="form-check-label" for="G27">
    27. Terdapat bercak seperti kapas yang menempel dikulit, sisik atau sirip
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G28">
  <label class="form-check-label" for="G28">
    28. Adanya bercak pada tubuh ikan
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G29">
  <label class="form-check-label" for="G29">
    29. Terjadi inflamasi
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G30">
  <label class="form-check-label" for="G30">
    30. Pembengkakan di perut 
  </label>
</div><div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="G31">
  <label class="form-check-label" for="G31">
    31. Mata pucat
  </label>
</div>
<br>
<button type="submit" class="btn btn-primary">Diagnosa</button>
</form>
@endsection
