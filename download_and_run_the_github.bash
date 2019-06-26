echo "would you like to update an old version or download one"

while [ true ]; do
    read dat_input
    echo "    ╭────────────╮
        │u = update  │
        │d = download│
        ╰────────────╯"
    if [ "$dat_input" = 'u' ] || [ "$dat_input" = 'update']; then
        while true; do
            echo drag the file into this terminal window and press ENTER.
            read update_file_directry
            if [[ -f "$update_file_directry" ]]
            then
                echo "file exists"
                break
            else
                echo "file not found try again"
            fi
        done
        
    elif [ "$dat_input" = 'd' ] || [ "$dat_input" = 'download']; then
        echo drag the folder where you want the file to download into this terminal window
        read download_folder
        cd ~$download_folder
        git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git
        bash "/the-miny-terminal-idk2/download_and_run_the_github.bash"
        break

    else
        echo "choose an option please:"
    fi
done

#git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git; bash "/the-miny-terminal-idk2/download_and_run_the_github.bash"
