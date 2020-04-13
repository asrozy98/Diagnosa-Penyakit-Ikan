<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;



class DiagnosaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexgejala()
    {
        $query = \App\gejala::all();
          
        return view ('diagnosa',compact('query'));
    }
    public function indexpenyakit()
    {
        $penyakit = \App\penyakit::all();
          
        return view ('penyakit',compact('penyakit'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $a = $request->cek;
        $aa = implode('AND',$a);
        $rule = \App\rule::where('rule',$aa)->get();
        $gejala= \App\gejala::whereIn('kd_gejala',$request->cek)->get();
        
        if (sizeof($rule) == 0 ) {
            return redirect('diagnosa')->with('status', 'Data Tidak Ditemukan!');
        }
        else {
        //$rulee=$rule;
        //foreach ($rule as $r)
        
        
        
        
        //$gejala= [\App\gejala::where('kd_gejala',$a[0])->get(),\App\gejala::where('kd_gejala',$a[1])->get(),\App\gejala::where('kd_gejala',$a[2])->get()];
        foreach($rule as $rulee)
        // //return $request->cek;}
        
        
        
        // foreach($idgejala as $idgej){
        // $gejalaaa= \App\gejala::find($idgej->id);
        // return $idgejala;//}
        // foreach($gejalaaa as $gejalaa){
        //     $gejalaa=$gejala;
            // if (!empty($rule))
            // {
            //     return redirect('diagnosa')->with('status', 'Data Tidak Ditemukan!');
            // }
            // else{
            // return view('hasil',compact('gejala','rule','penyakit'));
            // }
            
             
                $penyakit= \App\penyakit::where('kode',$rulee->maka_penyakit)->get();
                return view('hasil',compact('gejala','rule','penyakit'));
            }
            
         
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
