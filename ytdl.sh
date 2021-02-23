#! /bin/bash

function func_mainmenu () {

	echo "TJ's Youtube-dl Helper!"
	echo "Please Select what you would like to do"
	echo "1:Download Single Youtube Video file"
	echo "2:Download Single Youtube Audio file"
	echo "3:Download Playlist of Youtube Videos!"
	echo "4:Download Playlist of Youtube Audio files!"
	echo "q: quit"

	read n
	case $n in
		1) echo "Moving to single video download menu!"
			func_singlevideo;;

		2) echo "Moving to single audio download menu!"
			func_singleaudio;;

		3) echo "Moving to video playlist download menu!"
			func_playlistvideo;;

		4) echo "Moving to audio playlist download menu!"
			func_playlistaudio;;

	esac

} 

function func_singlevideo () {

	echo "Single video downloader menu!"
	echo "Please input the URL of the video you wish to download"
		read var_singlevidurl
	echo "You have chosen"
	echo " $var_singlevidurl !"
	echo "Is this correct? (Y/N)"
		read var_confirm
	 	if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
			echo "You chose yes! Proceeding!"
	 	elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
			echo "You picked no. Returning to main menu!"
			func_mainmenu
		 fi
	echo "Please input a name for this video"
		read var_videoname
	echo "You have input $var_videoname is this correct? (Y/N)"
		read var_confirm
		if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
			echo "Proceeding to next step!"

		elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
			echo "You have input no"
			echo "Restarting function"
			echo "DEBUG: This will be replaced by a check later so you don't have to reinput the video URL"
			func_singlevideo
		fi
	echo "Where would you like to download this video to?"
	echo "1: On your sdcard under videos!"
	echo "2: On your phone storage under videos!"
	echo "3: Custom location (NOT DONE YET)"
	echo "B: Return to main menu"
	echo "Q: Exits the program"
		read var_n
		case $var_n in

			1) echo "Checking if video directory exists"
			   	if [ -d /storage/sdcard1/videos ]; then
			   		echo "It exists, continuing!"
				else 
					echo "Directory missing, creating now!"
					mkdir /storage/sdcard1/videos
					echo "Directory created!"
					echo "Proceeding!"
				fi
			   echo "Beginning download!"
			   echo "DEBUG: Executing command"
			   echo "youtube-dl -o /storage/sdcard1/videos/$var_videoname $var_singlevidurl"
				youtube-dl -o /storage/sdcard1/videos/$var_videoname $var_singlevidurl
			  echo "Done!" 
			  echo "Would you like to return to the main menu? (Y/N)"
			  	read var_confirm
				if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
					func_mainmenu
				elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
					echo "You picked no, Press enter to quit program"
					read -p
						exit 
				fi ;; 

			  2)  echo "Checking if video directory exists"
					if [ -d /storage/sdcard0/videos ]; then
						echo "It exists! continuing!"
					else
						echo "Directory missing, creating now"
							mkdir /storage/sdcard0/videos
						echo "Directory made!"
						echo "Proceeding!"
					fi
					echo "Starting download!"
					echo "DEBUG: Executing command"
					echo "youtube-dl -o /storage/sdcard0/videos/$var_videoname $var_singlevidurl"
						youtube-dl -o /storage/sdcard0/videos/$var_videoname $var_singlevidurl
					echo "Done!" 
					echo "Would you like to return to the main menu? (Y/N)"
					read var_confirm
						if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
							func_mainmenu
						elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
							echo "You picked no, Press enter to quit program"
								read -p
							exit 
						fi ;; 
						
			3) echo "Will add later!"
					func_singlevideo ;;

				B) echo "Returning to main menu!"
					func_mainmen;;
				b) echo "Returning to main menu"
					func_mainmenu ;;
					
				Q) echo "Quitting program"
					echo "Press enter to close program"
						read -p
							exit ;; 
							
				q) echo "Quitting program"
					echo "Press enter to close program"
						read -p
							exit ;;
		esac
}

function func_singleaudio () {
	echo "Single audio downloader menu!"
	echo "Please input the URL of the video you wish to download"
		read var_singleaudio
	echo "You have chosen"
	echo " $var_singleaudio "
	echo "Is this correct? (Y/N)"
		read var_confirm
	 	if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
			echo "You chose yes! Proceeding!"
	 	elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
			echo "You picked no. Returning to main menu!"
			func_mainmenu
		 fi
	echo "Please input a name for this video"
		read var_videoname
	echo "You have input $var_videoname is this correct? (Y/N)"
		read var_confirm
		if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
			echo "Proceeding to next step!"

		elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
			echo "You have input no"
			echo "Restarting function"
			echo "DEBUG: This will be replaced by a check later so you don't have to reinput the video URL"
			func_singlevideo
		fi
	echo "Where would you like to download this audio to?"
	echo "1: On your sdcard under audio!"
	echo "2: On your phone storage under audio!"
	echo "3: Custom location (NOT DONE YET)"
	echo "B: Return to main menu"
	echo "Q: Exits the program"
		read var_n
		case $var_n in

			1) echo "Checking if audio directory exists"
			   	if [ -d /storage/sdcard1/audio ]; then
			   		echo "It exists, continuing!"
				else 
					echo "Directory missing, creating now!"
					mkdir /storage/sdcard1/audio
					echo "Directory created!"
					echo "Proceeding!"
				fi
			   echo "Beginning download!"
			   echo "DEBUG: Executing command"
			   echo "youtube-dl -o /storage/sdcard1/audio/$var_videoname $var_singleaudio"
				youtube-dl -o /storage/sdcard1/audio/$var_videoname $var_singleaudio
			  echo "Done!" 
			  echo "Would you like to return to the main menu? (Y/N)"
			  	read var_confirm
				if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
					func_mainmenu
				elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
					echo "You picked no, Press enter to quit program"
					read -p
						exit 
				fi ;; 

			  2)  echo "Checking if video directory exists"
					if [ -d /storage/sdcard0/audio ]; then
						echo "It exists! continuing!"
					else
						echo "Directory missing, creating now"
							mkdir /storage/sdcard0/audio
						echo "Directory made!"
						echo "Proceeding!"
					fi
					echo "Starting download!"
					echo "DEBUG: Executing command"
					echo "youtube-dl -o /storage/sdcard0/videos/$var_videoname $var_singlevidurl"
						youtube-dl -o /storage/sdcard0/videos/$var_videoname $var_singleaudio
					echo "Done!" 
					echo "Would you like to return to the main menu? (Y/N)"
					read var_confirm
						if [[ $var_confirm == y ]] || [[ $var_confirm == Y ]]; then
							func_mainmenu
						elif [[ $var_confirm == n ]] || [[ $var_confirm == N ]]; then
							echo "You picked no, Press enter to quit program"
								read -p
							exit 
						fi ;; 
						
			3) echo "Will add later!"
					func_singlevideo ;;

				B) echo "Returning to main menu!"
					func_mainmen;;
				b) echo "Returning to main menu"
					func_mainmenu ;;
					
				Q) echo "Quitting program"
					echo "Press enter to close program"
						read -p
							exit ;; 
							
				q) echo "Quitting program"
					echo "Press enter to close program"
						read -p
							exit ;;
		esac
		
}

func_mainmenu
