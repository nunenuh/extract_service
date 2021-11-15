#!/bin/bash

curl -X 'POST' \
  'http://localhost:8080/api/v1/predict' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{ "data":[{"text":"PROVINSI","bbox":[216,48,350,68]},
                {"text":"NUSA","bbox":[356,50,430,70]},
	            {"text":"TENGGARA","bbox":[437,49,594,73]},
	            {"text":"BARAT","bbox":[602,52,694,72]},
	            {"text":"KOTA","bbox":[342,80,416,98]},
	            {"text":"MATARAM","bbox":[425,79,564,101]},
	            {"text":"NIK","bbox":[39,112,104,140]},
	            {"text":"5271012410880221","bbox":[229,117,594,148]},
	            {"text":"Nama","bbox":[38,164,100,182]},
	            {"text":"LALU","bbox":[245,166,302,186]},
	            {"text":"ARFANDU","bbox":[310,170,416,188]},
	            {"text":"MEALA","bbox":[420,172,498,190]},
	            {"text":"YUSIN","bbox":[245,191,328,211]},
	            {"text":"KOTI","bbox":[366,198,412,212]},
	            {"text":"Tempat/Tgl","bbox":[35,210,160,236]},
	            {"text":"Lahir","bbox":[162,216,218,234]},
                {"text":"MATARAM","bbox":[248,218,360,234]},
                {"text":"10-10-1988","bbox":[376,222,490,238]},
                {"text":"Jenis","bbox":[37,239,90,257]},
                {"text":"Kelamin","bbox":[95,241,178,258]},
                {"text":"LAKI-LAKI","bbox":[244,242,356,258]},
                {"text":"Gol.","bbox":[440,246,476,262]},
                {"text":"Darah","bbox":[488,246,550,264]},
                {"text":"Alamat","bbox":[37,263,112,283]},
                {"text":"JL.","bbox":[244,266,266,282]},
                {"text":"MUSIUM","bbox":[282,268,374,284]},
                {"text":"NO","bbox":[382,268,414,284]},
                {"text":"11A","bbox":[430,270,466,286]},
                {"text":"TAMAN","bbox":[245,288,326,308]},
                {"text":"SERUNI","bbox":[334,292,422,310]},
                {"text":"RT/RW","bbox":[86,312,162,328]},
                {"text":"003/003","bbox":[244,314,330,332]},
                {"text":"Kel/Desa","bbox":[85,335,182,357]},
                {"text":"TAMAN","bbox":[245,337,326,356]},
                {"text":"SARI","bbox":[332,340,388,356]},
                {"text":"Kecamatan","bbox":[85,361,206,381]},
                {"text":"AMPENAN","bbox":[243,361,356,381]},
                {"text":"Agama","bbox":[32,384,106,404]},
                {"text":"ISLAM","bbox":[244,390,314,404]},
                {"text":"KOTA","bbox":[654,400,708,414]},
                {"text":"MATARAM","bbox":[713,400,813,414]},
                {"text":"Status","bbox":[31,409,98,428]},
                {"text":"Perkawinan","bbox":[105,407,230,431]},
                {"text":"KAWIN","bbox":[245,411,320,428]},
                {"text":"11-02-2016","bbox":[684,420,784,434]},
                {"text":"Pekerjaan","bbox":[31,433,138,453]},
                {"text":"KARYAWAN","bbox":[242,436,376,452]},
                {"text":"SWASTA","bbox":[384,436,478,454]},
                {"text":"Kewarganegaraan","bbox":[31,459,226,480]},
                {"text":"WNI","bbox":[246,462,290,476]},
                {"text":"Berlaku","bbox":[29,481,110,501]},
                {"text":"Hingga","bbox":[114,481,190,506]},
                {"text":"SEUMUR","bbox":[242,484,342,500]},
                {"text":"HIDUP","bbox":[350,484,422,502]}]
    }'