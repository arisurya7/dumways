<?php
    //data input
    $data1=[
        ['a','z','c'],
        ['a'],
        ['b','a','k','e'],
        ['k','b']
        
    ];
    //proses
    function sort_array($value){
        $array=$value;
        for($i=0; $i<count($array); $i++){
            for($j=0; $j<count($array)-$i-1; $j++){
                if(count($array[$j]) > count($array[$j+1]) ){
                    $temp=$array[$j];
                    $array[$j] = $array[$j+1];
                    $array[$j+1]=$temp;
                }
            }
            for($k=0; $k<count($array[$i]); $k++){
                for($p=0; $p<count($array[$i])-$k-1; $k++){
                    $s1=$array[$i][$k];
                    $s2=$array[$i][$k+1];
                    if(strcmp($s1, $s2)>0){
                        $temp=$array[$i][$k];
                        $array[$i][$k] = $array[$i][$k+1];
                        $array[$i][$k+1]=$temp;
                    }
                }
            }
        }
        return $array;     
    }

    $data=sort_array($data1);
?>

<!DOCTYPE html>
<html>
<head> 
    <title>Soal 1</title>
</head>
<body>
    <?php for($i=0; $i<count($data); $i++) : ?>
      <ul>
        <?php for($j=0; $j<count($data[$i]); $j++) : ?> 
         <li> <?php echo $data[$i][$j]?> </li>
        <?php endfor; ?>
      </ul>
        <?php endfor; ?>
</body>
</html>