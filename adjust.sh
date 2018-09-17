for clip in ServerFiles/*.mp4; do
	echo ${clip%.*}
	ffmpeg -i ${clip%.*}.mp4 -crf 17 -vf scale=640:-1 -movflags faststart -ss 00:00:00 -t 00:00:12 -async 1 -an ${clip%.*}_transformed.mp4
done