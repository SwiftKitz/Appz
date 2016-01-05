
<h1 align="center">
  Appz :iphone:
<h6 align="center">
  Deeplinking to external applications made easy
</h6>
</h1>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.2.0-blue.svg" />
  <a alt="Travis CI" href="https://travis-ci.org/SwiftKitz/Appz">
    <img alt="Version" src="https://travis-ci.org/SwiftKitz/Appz.svg?branch=master" />
  </a>
  <img alt="Swift" src="https://img.shields.io/badge/swift-2.1-orange.svg" />
  <img alt="Platforms" src="https://img.shields.io/badge/platform-ios%20%7C%20watchos%20%7C%20tvos-lightgrey.svg" />
  <a alt="Carthage Compatible" href="https://github.com/SwiftKitz/Appz#carthage">
    <img alt="Carthage" src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" />
  </a>
</p>

## Highlights

+ __Web Fallback Support:__<br />
In case the app can't open the external application, it will fall-back to a web URL that is guaranteed to succeed by opening the browser.

+ __Isolated App Specs:__<br />
It was crucial to make sure the library can scale as the number of supported apps increase. Therefor, each supported app is implemented in isolation in a separate file.

+ __Full Autocomplete Support__:
The API has been carefully designed to make the most out of auto complete features, so you don't even have to peak into any docs or code!

+ __Full Testing:__<br />
To make the specs as transparent as possible, the library has tests to make sure every external application action has tests with the expected results.

## Features

You can try them in the playground shipped with the framework!

__Concise syntax to trigger deep linking:__

```swift
let app = UIApplication.sharedApplication()
app.canOpen(Applications.Instagram())
app.open(Applications.AppStore(), action: .Account(id: "395107918"))
app.open(Applications.AppSettings(), action: .Open)
```

__Transparent web fallback:__

```swift
// In case the user doesn't have twitter installed, it will fallback to
// https://twitter.com/statuses/2
app.open(Applications.Twitter(), action: .Status(id: "2"))
```

__Add your applications:__

```swift
// Applications are recommended to be part of the
// "Applications" namespace
extension Applications {
    // Define your application as a type that
    // conforms to "ExternalApplication"
    struct MyApp: ExternalApplication {

        typealias ActionType = Applications.MyApp.Action

        let scheme = "myapp:"
        let fallbackURL = ""
    }
}
// Then, you define the actions your app supports
extension Applications.MyApp {

    enum Action: ExternalApplicationAction {

        case Open

        // Each action should provide an app path and web path to be
        // added to the associated URL
        var paths: ActionPaths {

            switch self {
            case .Open:
                return ActionPaths()
            }
        }
    }
}

app.open(Applications.MyApp(), action: .Open)
```

__Supported Apps (for now!):__

App | Actions
----|--------
[AppSettings][AppSettings-link] | Open
[AppStore][AppStore-link] | Developer, App
[Audible][Audible-link] | Open
[DailyMotion][DailyMotion-link] | Open
[DayOne][DayOne-link] | Open
[Documents][Documents-link] | Open
[Dropbox][Dropbox-link] | Open
[ebay][ebay-link] | Open
[Excel][Excel-link] | Open
[Facebook][Facebook-link] | Open, Profile, Notification, Feed
[FindFriends][FindFriends-link] | Open
[Flickr][Flickr-link] | Open
[GoogleChrome][GoogleChrome-link] | Open
[GoogleDrive][GoogleDrive-link] | Open
[GoogleEarth][GoogleEarth-link] | Open
[GoogleMail][GoogleMail-link] | Open
[GoogleMaps][GoogleMaps-link] | Open, Display Directions, Search
[GooglePlus][GooglePlus-link] | Open
[iBooks][iBooks-link] | Open
[IMDb][IMDb-link] | Open, Search, Title, Boxoffice, Showtimes, Feature Coming Soon, Feature Best Picture, Feature Born Today, Top rated movies, Most popular movies.
[INRIXTraffic][INRIXTraffic-link] | Open
[Instagram][Instagram-link] | Open, Camera, Media, Username, Location, Tag
[itranslate][itranslate-link] | Open, Translate
[Linkedin][Linkedin-link] | Open
[Mail][Mail-link] | Compose
[Messages][Messages-link] | SMS
[Music][Music-link] | Open
[OneDrive][OneDrive-link] | Open
[OneNote][OneNote-link] | Open
[Outlook][Outlook-link] | Open, Compose
[Paypal][Paypal-link] | Open
[Phone][Phone-link] | Open
[Pinterest][Pinterest-link] | Open, UserProfile, Search
[PowerPoint][PowerPoint-link] | Open
[Quora][Quora-link] | Open
[RemindersApp][RemindersApp-link] | Open
[Remote][Remote-link] | Open
[ScannerPro][ScannerPro-link] | Open
[Skype][Skype-link] | Open
[Sonos][Sonos-link] | Open
[Telegram][Telegram-link] | Open, SMS
[Trello][Trello-link] | Open
[Tweetbot][Tweetbot-link] | Timeline, Post, Mentions, Lists, Retweets, Favorites, Messages, Status, Search, Profile, Follow, Unfollow, Favorite, Unfavorite, Retweet, List
[Twitter][Twitter-link] | Status, UserHandle, UserId, List, Post, Search, Timeline, Mentions, Messages
[Twitterrific][Twitterrific-link] | Open, MentionsView, MessagesView, FavoritesView, Search, TweetID, MessageID, Post, UserProfile 
[Viber][Viber-link] | Open Calls Tab, Open Chats Tab
[Videos][Videos-link] | Open
[Waze][Waze-link] | Open
[WhatsApp][WhatsApp-link] | Open
[Word][Word-link] | Open
[Yelp][Yelp-link] | Open, Search, Search Location, Search Category, Search Category Location, Business
[Youtube][Youtube-link] | Open, Open Video
## Getting Started

### Configure Info.plist

You must add the schemes you want to use to your app's info.plist file under `LSApplicationQueriesSchemes`. [See here for more](http://stackoverflow.com/a/30988328/456434).

### Carthage

[Carthage][carthage-link] is fully supported. Simply add the following line to your [Cartfile][cartfile-docs]:

```ruby
github "SwiftKitz/Appz" ~> 1.2.0
```

### Cocoapods

[Cocoapods][cocoapods-link] is fully supported. Simply add the following line to your [Podfile][podfile-docs]:

```ruby
pod 'Appz'
```

### Submodule

For manual installation, you can grab the source directly or through git submodules, then simply:

+ Drop the `Appz.xcodeproj` file as a subproject (make sure `Copy resources` is __not__ enabled)
+ Navigate to your root project settings. Under "Embedded Binaries", click the "+" button and select the `Appz.framework`

## Motivation

I've gone through way too much pain than I am willing to admit integrating deeplinking in my app. It is very easy to forget calling `canOpenURL` or missing a colon somewhere. Another pain point was savaging the web for all the different specs for different applications.

With this library, you can keep the external application deep linking spec separately and rest assured as it is open source and maintained by the wonderful github community!

## Author

Mazyod ([@Mazyod](http://twitter.com/mazyod))

## Contributors

This library could not have made it so far without the generous contributions of various developers!

## License

Appz is released under the MIT license. See LICENSE for details.

[carthage-link]: https://github.com/Carthage/Carthage
[cartfile-docs]: https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile
[cocoapods-link]: https://cocoapods.org/
[podfile-docs]: https://guides.cocoapods.org/syntax/podfile.html
[AppSettings-link]: https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/index.html#//apple_ref/c/data/UIApplicationOpenSettingsURLString
[AppStore-link]: https://developer.apple.com/library/ios/qa/qa1633/_index.html
[Audible-link]: http://www.audible.com
[DailyMotion-link]: http://www.dailymotion.com/
[DayOne-link]: http://dayoneapp.com
[Documents-link]: https://readdle.com/products/documents
[Dropbox-link]: https://dropbox.com
[ebay-link]: http://www.ebay.com
[Excel-link]: https://www.office.com/
[Facebook-link]: https://facebook.com
[FindFriends-link]: http://handleopenurl.com/scheme/find-my-friends
[Flickr-link]: https://www.flickr.com
[GoogleChrome-link]: https://www.google.com/chrome/
[GoogleDrive-link]: https://www.google.com/drive/
[GoogleEarth-link]: https://www.google.com/earth
[GoogleMail-link]: https://mail.google.com
[GoogleMaps-link]: https://maps.google.com
[GooglePlus-link]: https://plus.google.com
[iBooks-link]: http://handleopenurl.com/?id=694
[IMDb-link]: http://www.imdb.com 
[INRIXTraffic-link]: http://inrix.com/inrix-traffic-app
[Instagram-link]: https://instagram.com
[itranslate-link]: http://itranslateapp.com
[Linkedin-link]: http://www.linkedin.com/
[Mail-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/MailLinks/MailLinks.html#//apple_ref/doc/uid/TP40007899-CH4-SW1
[Messages-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/SMSLinks/SMSLinks.html#//apple_ref/doc/uid/TP40007899-CH7-SW1
[Music-link]: http://handleopenurl.com/scheme/original-ipod-music-app
[OneDrive-link]: https://onedrive.live.com/
[OneNote-link]: https://www.office.com/
[Outlook-link]: http://www.outlook.com/
[Paypal-link]: https://paypal.com
[Phone-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/PhoneLinks/PhoneLinks.html
[Pinterest-link]: https://www.pinterest.com
[PowerPoint-link]: https://www.office.com/
[Quora-link]: https://www.quora.com
[RemindersApp-link]: http://handleopenurl.com/scheme/reminders
[Remote-link]: http://handleopenurl.com/scheme/remote
[ScannerPro-link]: https://readdle.com/products/scannerpro/
[Skype-link]: http://www.skype.com/
[Sonos-link]: http://www.sonos.com/
[Telegram-link]: https://web.telegram.org
[Trello-link]: https://trello.com/
[Tweetbot-link]: http://tapbots.com/tweetbot
[Twitter-link]: https://twitter.com
[Twitterrific-link]: http://twitterrific.com/ios/poweruser
[Viber-link]: http://www.viber.com
[Videos-link]: http://handleopenurl.com/scheme/ipod-video-library
[Waze-link]: https://www.waze.com
[WhatsApp-link]: https://www.whatsapp.com
[Word-link]: https://www.office.com/
[Yelp-link]: https://m.yelp.com
[Youtube-link]: https://youtube.com
