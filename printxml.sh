#!/bin/bash

# 출력할 XML 파일명 설정
output_file="backgrounds.xml"

# XML 헤더 작성
echo "<wallpapers>" > $output_file

# WQHD_01부터 WQHD_26까지 반복하는 경우
for i in $(seq -w 1 26)
do
    echo "  <wallpaper deleted=\"false\">" >> $output_file
    echo "    <name>WQHD_$i</name>" >> $output_file
    echo "    <filename>/usr/share/backgrounds/WQHD/WQHD_$i.jpg</filename>" >> $output_file
    echo "    <options>zoom</options>" >> $output_file
    echo "    <shade_type>solid</shade_type>" >> $output_file
    echo "    <pcolor>#000000</pcolor>" >> $output_file
    echo "    <scolor>#000000</scolor>" >> $output_file
    echo "    <artist>HamoniKR Team</artist>" >> $output_file
    echo "  </wallpaper>" >> $output_file
    echo "" >> $output_file
done

# XML 푸터 추가
echo "</wallpapers>" >> $output_file

echo "XML 파일 생성 완료: $output_file"
