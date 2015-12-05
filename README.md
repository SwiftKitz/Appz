
# Appz :iphone:

![Version](https://img.shields.io/badge/version-prerelease-orange.svg)
[![Travis CI](https://travis-ci.org/SwiftKitz/Appz.svg?branch=master)](https://travis-ci.org/SwiftKitz/Appz)
![Swift](https://img.shields.io/badge/swift-2.1-blue.svg)
![Platforms](https://img.shields.io/badge/platform-ios-lightgrey.svg)

Deeplinking to external applications made easy!

_Even though I shipped it with my app, I still need to invest the time to set this up, and finalize the API. Contributors welcome!_

## Highlights

+ __Web Fallback Support:__<br />
In case the app can't open the external application, it will fallback to a web URL that is guaranteed to succeed by opening the browser.

+ __Cleanly Separates App Specs:__<br />
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
app.open.appStore(.Account(id: "395107918"))
app.open.twitter(.UserHandle("mazyod"))
app.open.appSettings(.Open)
```

__Transparent Web Fallback:__

```swift
// In case the user doesn't have twitter installed, it will fallback to
// https://twitter.com/statuses/2
app.open.twitter(.Status(id: "2"))
```

__Add your own application:__

```swift
extension AvailableApplications {
    
    struct MyApp: ExternalApplication {
        
        let scheme = "myapp:"
        let fallbackURL: String? = nil
    }
    
    func myApp(action: MyApp.Action) -> Bool {
        return appCaller.launch(MyApp(), action: action)
    }
}

extension AvailableApplications.MyApp {
    
    enum Action: ExternalApplicationAction {
        
        case Open
    }
}

app.open.myApp(.Open)
```

__Supported Apps (for now!):__

App | Actions
----|--------
AppSettings | Open
Mail | Compose
Messages | SMS
AppStore | Developer, App
Twitter | Status, UserHandle, UserId, List, Post, Search, Timeline, Mentions, Messages

## Getting Started

1. You must add the schemes you want to use to your app's info.plist file under `LSApplicationQueriesSchemes`. [See here for more](http://stackoverflow.com/a/30988328/456434).
2. ... Cocoapods, Carthage, and better instructions coming soon.

## Motivation

I've gone through way too much pain than I am willing to admit integrating deeplinking in my app. It is very easy to forget calling `canOpenURL` or missing a colon somewhere. Another pain point was savaging the web for all the different specs for different applications.

With this library, you can keep the external application deep linking spec separately and rest assured as it is open source and maintained by the wonderful github community!

## Author

Mazyod ([@Mazyod](http://twitter.com/mazyod))

## License

Appz is released under the MIT license. See LICENSE for details.
