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
'------------------------------------------------------------------------'"
sleep 1
echo "Welcome to The Company automated update tool. Please stand by."
sleep 2

echo "Pulling new assets from GitHub"

git reset --hard
git pull



sleep 2
echo "Purging old BepInEx directory"
cd ..
rm -Force -r BepInEx

echo "Moving updated BepInEx directory to correct location"
cd ScrubCompanyContent
cp -Force BepInEx ..
sleep 2
echo "Update complete, Thank you for being a great asset to The Company."



sleep 1