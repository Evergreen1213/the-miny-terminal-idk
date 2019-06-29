$user = whoami
echo drag the app in here
input whereisapp

echo "type stop to return to main"
while [ true ]; do
    printf "$user:mini-command-center-launcher$ "
    read input
    if [ $input = terminator* ]; then
        if [ $input = terminator update* ]; then
             # body
        elif [ $input = terminator download* ]; then
            echo "sending user to downloader/updater"
        else
             # body
        fi 
    elif [ $input = "tetris" ]; then
          echo this game is not made by me
          echo "type c to see citations"
          echo "type p to play game"
          echo "type q to quit"
          bash "$whereisapp/Games/Terminal-Tetris-master/play_tetris.py"
    else
         echo "command unrecognised"
    fi
    
done
