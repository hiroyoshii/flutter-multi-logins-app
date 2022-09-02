
```
flutter build web
```

# Firebase Hosting
- setting
```
firebase init hosting
```
※ public directory を build/web に変更する。下記 firebase.json ができる。
```
{
  "hosting": {
    "public": "build/web",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ]
  }
}
```

- staging
```
firebase deploy --only hosting
```

## preview
```
firebase hosting:channel:deploy preview
```

## release
```
firebase hosting:clone logins-app-6ef63:preview logins-app-6ef63:live
```