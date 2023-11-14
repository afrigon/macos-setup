echo "\x1b[1;31m "
echo "Make sure terminal has the 'Full Disk Access' permission, otherwise some settings will not apply correctly"
echo "\x1b[0m "
read -n 1 -s -r -p "Press any key to continue"
echo ""

xcode-select --install

source ./defaults.sh
source ./brew.sh
source ./dock.sh

sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)

