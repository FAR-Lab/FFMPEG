for clip in N/*.mp4; do
	echo ${clip%.*}
	ffmpeg -i ${clip%.*}.mp4 -filter:v "crop=1352:760:600:100" ${clip%.*}-test.mp4
done