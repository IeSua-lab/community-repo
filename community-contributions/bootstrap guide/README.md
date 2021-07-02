## Instructions for the ROOT:

First you need to install the Joystream node. You can do it with this [script](https://github.com/Joystream/community-repo/tree/master/community-contributions/scriptnodeSetup).
After completing the installation - stop your node with the command:

```
systemctl stop joystream-node
```
After that run:
```
apt-get update
```

Install 7-Zip
```
apt-get install p7zip-rar p7zip-full
```
Delete blockchain folder
```
rm -rf /root/.local/share/joystream-node/chains/joy_testnet_5/db/
```
Download archive with snapshot
```
wget http://85.17.52.3/d/V2FzYWJpL3NuYXBzaG90XzAyMDcyMDIxX2Jsb2NrMTIzNDQzMC43eg==/snapshot_02072021_block1234430.7z
```
After download is complete, you need to unzip the archive
```
7z x snapshot_02072021_block1234430.7z -o/root/.local/share/joystream-node/chains/joy_testnet_5/ -y
```
After the archive is completely unpacked you can delete snapshot to save space
```
rm -rf snapshot_02072021_block1234430.7z
```
Start your node
```
systemctl start joystream-node
```

That's all. Node sync will start at block 1,234,430 (approximately).
