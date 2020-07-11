<?php

//proses
function cetak_gambar($data){
    $panjang=$data;
    if($panjang % 2 == 0){
        return false;
    }else{
        for($i=0; $i<$panjang; $i++){
            for($j=0; $j<$panjang; $j++){
                if(($i % 2==0)&&($j % 2==0)){
                    $array[$i][$j]='=';
                } else if(($i % 2==0)&&($j % 2!=0)){
                    $array[$i][$j]='*';
                }
                else if(($i % 2!=0)&&($j % 2==0)){
                    $array[$i][$j]='*';
                }
                else{
                    $array[$i][$j]='=';
                }
            }  
        }
        $center= round($panjang/2,0, PHP_ROUND_HALF_DOWN);
        $array[$center][$panjang-1]='=*';

        return $array;
    }
}

// display
$result=cetak_gambar(5);
if($result==false){
    echo "Maaf hanya bisa menginputkan bilangan ganjil";
} else{
    for ($i=0; $i<count($result) ; $i++) { 
        for ($j=0; $j <count($result[$i]) ; $j++) {
            echo "&nbsp&nbsp&nbsp".$result[$i][$j]."&nbsp&nbsp&nbsp"; 
        }
        echo "<br>";
    }
}

?>