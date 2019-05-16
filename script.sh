# Escriba su código aquí
cat data.csv
sed -E 's,([0-9]{2})/([0-9]{2})/([0-9]{2}),20\3-\2-\1,g' data.csv > data1.csv
sed 's/;N/;\\N;/g' data1.csv > data2.csv
sed 's/,/./g' data2.csv > data3.csv
sed 's/;/,/g' data3.csv > data4.csv
sed 's/a/A/g' data4.csv > data5.csv
sed 's/c/C/g' data5.csv > data6.csv
sed '/\\N/d' data6.csv > data7.csv
cp data7.csv data.csv
rm data1.csv data2.csv data3.csv data4.csv data5.csv data6.csv data7.csv
