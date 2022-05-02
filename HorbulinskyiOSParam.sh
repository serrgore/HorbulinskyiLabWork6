#!/bin/bash
echo -n 'Введіть назву параметру: ' 
read par_name 
case $par_name in
	SwapCached)
		swap_cached=$(grep SwapCached /proc/meminfo) 
		echo "$swap_cached"
		echo -E "SwapCached - об'єм пам'яті, який одного разу був поміщений в область підкачки swap, але полтім перенесений назад у пам'ять, однак дані все ще присутні в swap, і при необхідності цей обсяг пам'яті може бути знову звільнений без витрачання ресурсів на операції введеня/виводу.";;
	cache_size)
		cache_size=$(grep 'cache size' /proc/cpuinfo | sort -u)
		echo "$cache_size"
		echo -E 'cache size - розмір кешу';;
	*)
		echo -E 'Не вдалося розпізнати параметр'		
esac
