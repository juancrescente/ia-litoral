echo '>> START : Audio to Spectrogram creation <<'

for audioFile in ./data/data/*.wav; do
        echo $audioFile
        ffmpeg -y -i $audioFile -lavfi showspectrumpic=s=600x300:legend=disabled $audioFile.jpg
    done
    
echo '>> END : Audio to Spectrogram creation <<'
