for clip in test/*.mp4; do
	echo ${clip%.*}
	ffmpeg -i ${clip%.*}.mp4 -crf 17 -movflags faststart ${clip%.*}_transformed.mp4
done
