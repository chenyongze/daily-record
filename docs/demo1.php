<?php
/*************************************************************************
    > File Name: demo1.php
    > Author: yongze.chen
    > Mail: sapphire.php@gmail.com 
    > Created Time: 一  1/11 11:10:34 2021
 ************************************************************************/

// php  不使用内置函数  实现   字符反转
// php 内置字符反转 函数  array_reverse
//
//
//

function str_rev($str)
{
	for($i=0;true;$i++){

		if(!isset($str[$i])){
			break;
		}
	}

	$return ='';
	for($j=$i;$j>0;$j--){

		$return .=$str[$j];
	}

	return $return;

}


echo str_rev('abc');


