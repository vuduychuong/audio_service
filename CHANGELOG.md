## 0.4.1

* Fix queue support bug

## 0.4.0

* Breaking change: AudioServiceBackground.run takes a single parameter.

## 0.3.1

* Update example to disconnect when pressing back button.

## 0.3.0

* Breaking change: updateTime now measured since epoch instead of boot time.

## 0.2.1

* Streams use RxDart BehaviorSubject.

## 0.2.0

* Migrate to AndroidX.

## 0.1.1

* Bump targetSdkVersion to 28
* Clear client-side metadata and state on stop.

## 0.1.0

* onClick is now always called for media button clicks.
* Option to set notifications as ongoing.

## 0.0.15

* Option to set subText in notification.
* Support media item ratings

## 0.0.14

* Can update existing media items.
* Can specify order of Android notification compact actions.
* Bug fix with connect.

## 0.0.13

* Option to preload artwork.
* Allow client to browse media items.

## 0.0.12

* More options to customise the notification content.

## 0.0.11

* Breaking API changes.
* Connection callbacks replaced by a streams API.
* AudioService properties for playbackState, currentMediaItem, queue.
* Option to set Android notification channel description.
* AudioService.customAction awaits completion of the action.

## 0.0.10

* Bug fixes with queue management.
* AudioService.start completes when the background task is ready.

## 0.0.9

* Support queue management.

## 0.0.8

* Bug fix.

## 0.0.7

* onMediaChanged takes MediaItem parameter.
* Support playFromMediaId, fastForward, rewind.

## 0.0.6

* All APIs address media items by String mediaId.

## 0.0.5

* Show media art in notification and lock screen.

## 0.0.4

* Support and example for playing TextToSpeech.
* Click notification to launch UI.
* More properties added to MediaItem.
* Minor API changes.

## 0.0.3

* Pause now keeps background isolate running
* Notification channel id is generated from package name
* Updated example to use audioplayer plugin
* Fixed media button handling

## 0.0.2

* Better connection handling.

## 0.0.1

* Initial release.
