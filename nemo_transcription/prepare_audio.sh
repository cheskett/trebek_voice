mmv \*.wav ${PWD##*/}_\#1.wav && mkdir orig && mkdir mono && for i in *.wav; do ffmpeg -y -i "$i" -ac 1 "mono/${i%.*}.wav"; done && mv *.wav orig/ && mv mono/*.wav . && rm -r mono && mv orig ../../wavs_orig/${PWD##*/}