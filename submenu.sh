#! /usr/bin/env bash
echo "Use this script to manipulate files in your current working directory:"
echo "----------------------------------------------------------------------"
echo "Here is a list of all your files. Select a file to access all"
echo "available file actions:"

select FILE in * exit;
do
    case $FILE in 
    exit)
        echo "Exiting script ..."
        break
        ;;
    *)
        select ACTION in delete view edit run exit;
        do 
            case $ACTION in
            delete)
                echo "You've chose to delete your file" "$FILE"
                rm -i "$FILE"
                echo "File ""$FILE" "has been deleted"
                echo "Exiting script ..."
                break
                ;;
            view)
                echo "Your selected file's contents will be printed to the terminal:"
                cat "$FILE"
                echo "-----------------------"
                echo "Exiting script ..."
                break
                ;;
            edit)
                nano "$FILE"
                break
                ;;
            run) 
                ("/Users/tristanbower/bash_scripts/$FILE")
                break
                ;;
            exit)
                echo "Exiting script ..."
                break
                ;;
            esac
        done
        break
        ;;
    esac
done
