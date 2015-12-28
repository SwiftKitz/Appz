
<h1 align="center">
  Appz :iphone:
<h6 align="center">
  Deeplinking to external applications made easy
</h6>
</h1>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg" />
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
AppSettings | Open
AppStore | Developer, App
IMDb | Open, Search, Title, Boxoffice, Showtimes, Feature Coming Soon, Feature Best Picture, Feature Born Today, Top rated movies, Most popular movies.
Instagram | Open, Camera, Media, Username, Location, Tag
Mail | Compose
Messages | SMS
Telegram | Open, SMS
Twitter | Status, UserHandle, UserId, List, Post, Search, Timeline, Mentions, Messages
Youtube | Open, Open Video
Tweetbot | Timeline, Post, Mentions, Lists, Retweets, Favorites, Messages, Status, Search, Profile, Follow, Unfollow, Favorite, Unfavorite, Retweet, List
Facebook | Open, Profile, Notification, Feed
## Getting Started

### Configure Info.plist

You must add the schemes you want to use to your app's info.plist file under `LSApplicationQueriesSchemes`. [See here for more](http://stackoverflow.com/a/30988328/456434).

### Carthage

[Carthage][carthage-link] is fully supported. Simply add the following line to your [Cartfile][cartfile-docs]:

```ruby
github "SwiftKitz/Appz" ~> 1.0.0
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

## License

Appz is released under the MIT license. See LICENSE for details.

[carthage-link]: https://github.com/Carthage/Carthage
[cartfile-docs]: https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile
[cocoapods-link]: https://cocoapods.org/
[podfile-docs]: https://guides.cocoapods.org/syntax/podfile.html
