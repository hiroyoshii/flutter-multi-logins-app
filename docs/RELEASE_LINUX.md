https://docs.flutter.dev/deployment/linux

# wsl で
## snap install
```
sudo apt-get update && sudo apt-get install -yqq daemonize dbus-user-session fontconfig
 sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target
 exec sudo nsenter -t $(pidof systemd) -a su - $LOGNAME
 
 snap version
```


## install
```
sudo snap install snapcraft --classic
```