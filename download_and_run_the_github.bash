echo "would you like to update an old version or download one"

while [ true ]; do
    echo "    ╭────────────╮
    │u = update  │
    │d = download│
    ╰────────────╯"
    read dat_input

    if [ "$dat_input" = 'u' ] || [ "$dat_input" = 'update']; then
        while true; do
            echo drag the file into this terminal window and press ENTER.
            read update_file_directry
            if [[ -d "$update_file_directry" ]]; then
                echo "folder exists"
                cd "$update_file_directry"
                cd ..
                pwd
                while true; do
                    echo "which version would you like
                    ╭───────────────────╮
                    │m = master (stable)│
                    │b = beta (unstable)│
                    ╰───────────────────╯"
                    read version
                    if [ $version = b ]; then
                        
                        rm -rfv "$update_file_directry"
                        git clone -b "beta_version-(experimental)" https://github.com/Evergreen1213/the-miny-terminal-idk2.git
                        break
                    elif [ $version = m ]; then
                        rm -rfv "$update_file_directry"
                        git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git
                        break
                    else
                        echo "choose an option please:"
                    fi
                done

                break
            else
                echo "folder not found, try again"
            fi
        done
    elif [ "$dat_input" = 'd' ] || [ "$dat_input" = 'download']; then
        echo drag the folder where you want the file to download into this terminal window
        read download_folder
        cd $download_folder
        git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git
        bash "$download_folder/the-miny-terminal-idk2/download_and_run_the_github.bash"
        break
    else
        echo "choose an option please:"
    fi
done

#git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git; bash "/the-miny-terminal-idk2/download_and_run_the_github.bash"