   #!/bin/bash

   # Navigate to the devilbox directory
   cd /home/morpheus/Applications/devilbox || exit  # Use your actual home directory path


   # Check the argument passed to the script
   case "$1" in
       up)
           # Run docker-compose up in the background
           docker-compose up -d
           ;;
       down)
           # Run docker-compose down
           docker-compose down
           ;;
       *)
           echo "Usage: devilbox {up|down}"
           exit 1
           ;;
   esac
