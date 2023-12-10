echo "
.------------------------------------------------------------------------.
|                                                                        |
|                                                                        |
|    ________             ______                                         |
|   /_  __/ /_  ___      / ____/___  ____ ___  ____  ____ _____  __  __  |
|    / / / __ \/ _ \    / /   / __ \/ __ `__ \/ __ \/ __ `/ __ \/ / / /  |
|   / / / / / /  __/   / /___/ /_/ / / / / / / /_/ / /_/ / / / / /_/ /   |
|  /_/ /_/ /_/\___/    \____/\____/_/ /_/ /_/ .___/\__,_/_/ /_/\__, /    |
|                                          /_/                /____/     |
|                                                                        |
|                                                                        |
'------------------------------------------------------------------------'

"
sleep 2

echo "Welcome to The Company automated update tool. Please stand by.

"


echo "- Pulling new assets from GitHub

"
sleep 2

git reset --hard

git reset --hard

git pull

if (Test-Path ../BepInEx -PathType Container) {
    # Directory exists
    
    Write-Host "Purging existing BepInEx directory..."
	cd ..
	rm -Force -r BepInEx
	sleep 2
    cd ScrubCompanyContent
} else {
    # Directory does not exist
    Write-Host "The 'BepInEx' directory does not exist, no need to purge."
}


if (Test-Path ../doorstop_config.ini -PathType Leaf) {
    # File exists
    Write-Host "Purging existing doorstop_config..."
	cd ..
	rm -Force -r doorstop_config.ini
	sleep 2
    cd ScrubCompanyContent
} else {
    # File does not exist
    Write-Host "The doorstop file does not exist, no need to purge."
    
}

if (Test-Path ../manifest.json -PathType Leaf) {
    # File exists
    Write-Host "Purging existing manifest..."
	cd ..
	rm -Force -r manifest.json
	sleep 2
    cd ScrubCompanyContent
} else {
    # File does not exist
    Write-Host "The manifest file does not exist, no need to purge."
    
}

if (Test-Path ../winhttp.dll -PathType Leaf) {
    # File exists
    Write-Host "Purging existing winhttp dll..."
	cd ..
	rm -Force -r winhttp.dll
	sleep 2
    cd ScrubCompanyContent
} else {
    # File does not exist
    Write-Host "The winhtttp dll does not exist, no need to purge."
    
}


echo "- Moving updated BepInEx directory to correct location

"
cp -Force -r BepInEx ..
sleep 2



echo "- Moving updated doorstop_config file to correct location

"
cp -Force assets/doorstop_config.ini ..
sleep 2

echo "- Moving updated manifest file to correct location

"
cp -Force assets/manifest.json ..
sleep 2

echo "- Moving updated winhttp.dll file to correct location

"
cp -Force assets/winhttp.dll ..
sleep 2

echo "

Update complete. On behalf of The Company, thank you for being a great asset to The Company.

 _____                _       ___               _     
|  __ \              | |     / _ \             | |    
| |  \/_ __ ___  __ _| |_   / /_\ \___ ___  ___| |_   
| | __| '__/ _ \/ _` | __|  |  _  / __/ __|/ _ \ __|  
| |_\ \ | |  __/ (_| | |_   | | | \__ \__ \  __/ |_   
 \____/_|  \___|\__,_|\__|  \_| |_/___/___/\___|\__|  
                                                      
                                                      
 _____                _      _____                _   
|  __ \              | |    |  __ \              | |  
| |  \/_ __ ___  __ _| |_   | |  \/_ __ ___  __ _| |_ 
| | __| '__/ _ \/ _` | __|  | | __| '__/ _ \/ _` | __|
| |_\ \ | |  __/ (_| | |_   | |_\ \ | |  __/ (_| | |_ 
 \____/_|  \___|\__,_|\__|   \____/_|  \___|\__,_|\__|
                                                      
                                                      
  ___               _     _          _____ _          
 / _ \             | |   | |        |_   _| |         
/ /_\ \___ ___  ___| |_  | |_ ___     | | | |__   ___ 
|  _  / __/ __|/ _ \ __| | __/ _ \    | | | '_ \ / _ \
| | | \__ \__ \  __/ |_  | || (_) |   | | | | | |  __/
\_| |_/___/___/\___|\__|  \__\___/    \_/ |_| |_|\___|
                                                      
                                                      
 _____                                                
/  __ \                                               
| /  \/ ___  _ __ ___  _ __   __ _ _ __  _   _        
| |    / _ \| '_ ` _ \| '_ \ / _` | '_ \| | | |       
| \__/\ (_) | | | | | | |_) | (_| | | | | |_| |       
 \____/\___/|_| |_| |_| .__/ \__,_|_| |_|\__, |       
                      | |                 __/ |       
                      |_|                |___/        
"
sleep 5