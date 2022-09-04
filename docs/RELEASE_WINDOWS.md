# change version
- pubsub.yaml
```
version: 1.0.0+1
```

# add desktop library
```
flutter pub add firebase_core_desktop
```

```
flutterfire configure
```

```
dart pub add firebase_auth_desktop
```

windows の firebase_auth support がない？

# msix settings
https://docs.flutter.dev/development/platform-integration/windows/building

```
flutter pub add --dev msix
```

```
flutter pub run msix:create
```

```
cp build/windows/runner/Release/logins_app.msix assets/applications/
```