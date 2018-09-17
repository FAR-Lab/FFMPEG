for clip in ServerFiles/*.mp4; do	
	filename=$(basename $clip)
	ffmpeg -i ${clip%.*}.mp4 -vf drawtext="fontfile=/path/to/font.ttf: \
	text=${filename%.*}: fontcolor=white: fontsize=24: box=1: boxcolor=black@0.5: \
	boxborderw=5: x=(w-text_w-20): y=20" ${clip%.*}_label.mp4
done