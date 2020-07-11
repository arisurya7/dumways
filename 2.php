<?php

function prediksi_jumlah_ikan($jumlahawal, $harilahir,$hari, $jumlahlahir, $persenmati){
     $jml=$jumlahawal;
     $hl=$harilahir;
     $h= $hari;
     $l=$jumlahlahir;
     $m=$persenmati;
     while($h>$hl){
         $jml=$jml-($jml*$m);
         $jml=$jml*$l;
         $h=$h-$hl;
     }
     return $jml;
 }

//pemanggilan fungsi
$result=prediksi_jumlah_ikan(1476,46,471,5,0.06);

//output
 echo "Total jumlah : ". $result;

?>