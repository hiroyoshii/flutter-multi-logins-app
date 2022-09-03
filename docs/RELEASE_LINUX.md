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

```
sudo snap install multipass --classic
```

```
snapcraft
```

multipass がダメ？


# build

```
git clone https://github.com/flutter/flutter
sudo mv flutter /usr/local/
export PATH=$PATH:/usr/local/flutter/bin
```

```
sudo apt install clang curl pkg-config ninja-build cmake libgtk-3-dev libblkid-dev liblzma-dev unzip
```

sudo apt-get install libwebkit2gtk-4.0-dev

```
flutter config --enable-linux-desktop
```

```
flutter run -d linux
```