# logins_app
[![Codemagic build status](https://api.codemagic.io/apps/6312170c2923d8020df57458/6312170c2923d8020df57457/status_badge.svg)](https://codemagic.io/apps/6312170c2923d8020df57458/6312170c2923d8020df57457/latest_build)

A multi-platform login app.

## Release Process
### Enable Vonfig
```
flutter config --enable-macos-desktop
flutter config --enable-windows-desktop
flutter config --enable-macos-desktop
flutter config --enable-linux-desktop
flutter config --enable-android
flutter config --enable-ios
```

### Build & Release
- [Release Windows App](./docs/RELEASE_WINDOWS.md)
- [Release Browser App](./docs/RELEASE_BROWSER.md)
- [Release Android App](./docs/RELEASE_ANDROID.md)
- codemagic deploy
  - Mac App
- Release iOS App
- Release Linux App

https://codemagic.io/app/6312170c2923d8020df57458/workflow/6312170c2923d8020df57457/settings

## Download / Visit App
- web: https://logins-app-6ef63.web.app/#/
- windows: assets/applications/logins_app.msix
