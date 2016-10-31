ffmpeg -i input_video.mp4 -ss 00:00:30 -t 00:00:10 -c:v copy copped.mp4
convert -depth 8 -resize 50% -background transparent plate.svg plate.png
ffmpeg -i copped.mp4 -i plate.png -filter_complex 'overlay=y=346:enable=between(t\,1\,9)' plated.mp4
ffmpeg -i plated.mp4 -filter_complex 'drawtext=text="Allo":x=200:y=476:fontfile=Arial.ttf:fontcolor=black:enable=between(t\,2\,9)' result.mp4