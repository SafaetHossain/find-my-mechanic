<?php
function getJSONFromDB($sql){

            $conn = mysqli_connect("localhost", "root", "", "find_My_Mechanic");

            $result = mysqli_query($conn, $sql)or die(mysqli_error($conn));
            $arr=array();
            while($row = mysqli_fetch_assoc($result)) {
                $arr[]=$row;
            }
            return json_encode($arr);
        }

        $sql="select nid from carowner where nid = '".$_REQUEST['carOwnerNid']."'";
        $jsonData= getJSONFromDB($sql);
        $json=json_decode($jsonData);
        if($jsonData != '[]'){
        	echo $json[0]->nid;
        }
?>