$user = whoami
echo drag the app in here
read whereisapp

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
          echo "this game is not made by the creator of The Mini Terminal"
          echo "type c to see citations"
          echo "type p to play game"
          echo "type anyting else to quit"
          read game_start_input
          if [ $game_start_imput = "c" ]; then
               open "https://github.com/bsamek/Tetris"
          elif [ $game_start_imput = "p" ]; then
               bash "the-miny-terminal-idk2/Games/Terminal-Tetris-master/play_tetris.py"
          else
               echo "quitting"
          fi
          
          python "$whereisapp/Games/Terminal-Tetris-master/play_tetris.py"
     
     
     elif [ $input = "stop" ]; then

     break

    else
         echo "command unrecognised"
    fi
    
done
