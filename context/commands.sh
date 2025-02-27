case $1 in
 cvt) # convert
 :
 ;;
 # for f in ./*;do ffmpeg -i  -ar 16000 -ac 1 -c:a pcm_s16le .wav; done
 seg) # segment
 :
 ;;
 # ffmpeg -i TESTE_01_chatgpt.m4a.wav -f segment -segment_time 60 -c copy out%03d.wav
 trcb) # transcribe
 :
 ;;
 #~/venv/bin/whisper --output_dir --language pt ./extracted contents/out000.wav
 *)
 ;;
esac
sudo docker build -t whisperd -f Dockerfile ./context
