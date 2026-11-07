# Online Piano Lessons — Android

Native Android version of the iOS app, written in Kotlin with Jetpack Compose.

| iOS (SwiftUI)                        | Android (this folder)                         |
|--------------------------------------|-----------------------------------------------|
| `ContentView.swift`                  | `ui/HomeScreen.kt`                            |
| `Lesson 1.swift` … `Lesson 4.swift`  | `ui/LessonScreen.kt` + `assets/lessons.json`  |
| `VideoViewer.swift` (AVPlayer)       | `ui/VideoPlayerScreen.kt` (ExoPlayer/Media3)  |
| `PaywallView` (RevenueCatUI)         | `ui/PaywallScreen.kt` (RevenueCat purchases-ui)|
| `UserViewModel.swift`                | `SubscriptionViewModel.kt`                    |
| `Online_Piano_LessonsApp.swift`      | `PianoApp.kt` + `MainActivity.kt`             |
| `Assets.xcassets/Stills`             | `res/drawable-nodpi/still_*.jpg` (resized)    |

## Lesson content

Every video, handout and section header is listed in
`app/src/main/assets/lessons.json`. It was generated from the four iOS lesson files
(87 videos, 40 PDFs). To add or change a lesson, edit the JSON; no Kotlin changes needed.

Item types: `video` (with optional `image`), `pdf`, `header`. `image` is the name of a file in
`res/drawable-nodpi` without its extension.

## Open and run

1. Install [Android Studio](https://developer.android.com/studio).
2. **File → Open** and choose this `android` folder (not the repo root).
3. Let Gradle sync. Android Studio downloads the SDK and libraries automatically.
4. Pick an emulator or a plugged-in phone and press **Run**.

The intro video works without any setup. Lessons are behind the paywall, which needs the
RevenueCat key below.

## Subscriptions (RevenueCat + Google Play)

1. In Google Play Console, create the app (`com.opl.onlinepianolessons`) and two subscriptions
   that match iOS: monthly $9.99 and yearly $119.99.
2. In RevenueCat, add an **Android / Play Store** app to the existing project and connect the
   Play service-account credentials.
3. Import the Play products and attach them to the existing **Full Access** entitlement and
   to the same offering/paywall the iOS app uses.
4. Copy the Android public SDK key (starts with `goog_`) into `android/local.properties`:

   ```
   revenuecat.apiKey=goog_xxxxxxxxxxxxxxxx
   ```

   `local.properties` is git-ignored, so the key isn't committed.

Purchases only work in a build installed from a Play testing track (internal testing is
fastest). Add your Google account as a license tester in Play Console.
