# Lantern (Expo)

1. `npm install`
2. `npx expo install --fix`  (matches library versions to your Expo SDK)
3. `npx expo start`, then scan the QR code with the Expo Go app on your phone.

Ship it: `npm i -g eas-cli`, `eas build:configure`, `eas build -p ios` or `-p android`, then `eas submit`.
Change `com.example.lantern` in app.json to your own ID first.

Notes
- Each tab is a real WebView, so DuckDuckGo and other sites load normally.
- A wallpaper photo is referenced by its picker path, which the OS may clear later. If it vanishes, choose it again.
