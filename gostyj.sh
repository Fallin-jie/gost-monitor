screen_name=$"jiankong"
screen -dmS $screen_name
cmd=$"wget http://syd2.5awo.com:666/gost/gostjk.sh";
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'
cmd=$"bash gostjk.sh";
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'
screen -r jiankong
