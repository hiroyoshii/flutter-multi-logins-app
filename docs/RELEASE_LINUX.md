https://docs.flutter.dev/deployment/linux

# ec2 
- t2.medium
  - RAM が足りないと失敗する
- ubuntu
- 30GiB storage

## install
- check snap installation
```
 snap version
```
- add package
```
sudo snap install snapcraft --classic
```
- create package env
```
sudo lxd init
```
- package application
```
snapcraft --use-lxd
```

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

