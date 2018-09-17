for clip in Test/*.mp4; do
	echo ${clip%.*}
	ffmpeg -i ${clip%.*}.mp4 -ss 00:00:00 -t 00:00:12 -async 1 ${clip%.*}_cut.mp4
done