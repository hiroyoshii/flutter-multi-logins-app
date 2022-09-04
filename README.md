# Multi-Platform Login Application
[![Codemagic build status](https://api.codemagic.io/apps/6312170c2923d8020df57458/6312170c2923d8020df57457/status_badge.svg)](https://codemagic.io/apps/6312170c2923d8020df57458/6312170c2923d8020df57457/latest_build)

A flutter login app for all supported platform(Web/Android/iOS/Windows/MacOS/Linux) in flutter.

Login interface is implemented by [flutterfire-ui](https://github.com/firebase/flutterfire/tree/master/packages/flutterfire_ui).

## Applications
| Web           | Android     | iOS      | Windows       |  MacOS        |  Linux<br>(snapcraft)   | 
| :-----------: | :---------: | :------: | :-----------: | :-----------: | :---------------------: |
| [View on Web](https://logins-app-6ef63.web.app/#/) | [<img src="assets\images\android.png"  width="50">](https://raw.githubusercontent.com/hiroyoshii/flutter-multi-logins-app/master/assets/applications/app-armeabi-v7a-release.apk) | [<img src="assets\images\ios.png"  width="50">](https://raw.githubusercontent.com/hiroyoshii/flutter-multi-logins-app/master/assets/applications/Runner.app.zip) | [<img src="assets\images\windows.png"  width="50">](https://raw.githubusercontent.com/hiroyoshii/flutter-multi-logins-app/master/assets/applications/logins_app.msix) | [<img src="assets\images\mac.png"  width="50">](https://raw.githubusercontent.com/hiroyoshii/flutter-multi-logins-app/master/assets/applications/logins_app.app.zip) |[<img src="assets\images\linux-snapcraft.png" width="50">](https://raw.githubusercontent.com/hiroyoshii/flutter-multi-logins-app/master/assets/applications/logins-app_0.1.0_amd64.snap) |


## Build & Releases
### Enable Config
```
flutter config --enable-macos-desktop
flutter config --enable-windows-desktop
flutter config --enable-linux-desktop
flutter config --enable-web
flutter config --enable-android
flutter config --enable-ios
```

### Release By Platform
- [Release Windows App](./docs/RELEASE_WINDOWS.md)
- [Release Browser App](./docs/RELEASE_BROWSER.md)
- [Release Android App](./docs/RELEASE_ANDROID.md)
- [Release Linux App](./docs/RELEASE_LINUX.md)
- Release by codemagic 
  - Mac App
  - iOS App

