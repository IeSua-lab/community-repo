systemctl stop joystream-node
sudo apt-get update
sudo rm -rf /home/$USER/.local/share/joystream-node/chains/joy_testnet_5/db/
sudo rm -rf /root/.local/share/joystream-node/chains/joy_testnet_5/db/
sudo apt install python-pip
sudo pip install gdown
gdown --id 1bnhEkX1L0CBIodEVUUW7t86I_FNAYC6C
7z x snapshot_02072021_block1234430.7z -o/home/$USER/.local/share/joystream-node/chains/joy_testnet_5/
sudo rm -rf snapshot_02072021_block1234430.7z
sudo systemctl start joystream-node
sudo systemctl enable joystream-node
