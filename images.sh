for clip in LAMWITTY_ML_CLIPS/TRAINING2/Y/*.mp4; do
	echo ${clip%.*}
	ffmpeg -i ${clip%.*}.mp4  -vf fps=29 ${clip%.*}_image%d.jpg
done