$user = whoami


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
        
    elif [ condition ]; then
         # body
    else
         # body
    fi
    
done
