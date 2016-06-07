
<h1 align="center">
  Appz :iphone:
<h6 align="center">
  Deeplinking to external applications made easy
</h6>
</h1>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.5.0-blue.svg"/>
  <a alt="Travis CI" href="https://travis-ci.org/SwiftKitz/Appz">
    <img alt="Version" src="https://travis-ci.org/SwiftKitz/Appz.svg?branch=master"/>
  </a>
  <img alt="Swift" src="https://img.shields.io/badge/swift-2.2-orange.svg"/>
  <img alt="Platforms" src="https://img.shields.io/badge/platform-ios%20%7C%20watchos%20%7C%20tvos-lightgrey.svg"/>
  <a alt="Carthage Compatible" href="https://github.com/SwiftKitz/Appz#carthage">
    <img alt="Carthage" src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"/>
  </a>
  <img alt="Supported Apps" src="https://img.shields.io/badge/Apps-153-9600cd.svg"/>
</p>

<p align="center">
    <img src="resources/Demo.gif">
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
        let appStoreId = ""
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
[AirLaunch][AirLaunch-link] | Open
[AliExpress][AliExpress-link] | Open
[AllCast][AllCast-link] | Open
[AppleMaps][AppleMaps-link] | Open
[AppSettings][AppSettings-link] | Open
[AppStore][AppStore-link] | Developer, App, Rate App
[Audible][Audible-link] | Open
[BNR][BNR-link] | Open
[Box][Box-link] | Open
[Buzzfeed][Buzzfeed-link] | Open
[Calendars5][Calendars5-link] | Open
[Camera360][Camera360-link] | Open
[Chromecast][Chromecast-link] | Open
[CirclePay][CirclePay-link] | Open, Request, Send
[Clips][Clips-link] | Open
[Cnet][Cnet-link] | Open
[CNN][CNN-link] | Open
[Currency][Currency-link] | Open
[DailyMotion][DailyMotion-link] | Open
[DayCost][DayCost-link] | Open
[DayOne][DayOne-link] | Open
[Diigo][Diigo-link] | Open
[Documents][Documents-link] | Open
[Dropbox][Dropbox-link] | Open
[eBay][eBay-link] | Open
[Echofon][Echofon-link] | Open
[Epson][Epson-link] | Open
[Everypost][Everypost-link] | Open
[EyeEm][EyeEm-link] | Open
[Facebook][Facebook-link] | Open, Profile, Notification, Feed, Page, Action
[Feedly][Feedly-link] | Open
[FileApp][FileApp-link] | Open
[FindFriends][FindFriends-link] | Open
[Fitbit][Fitbit-link] | Open
[Flickr][Flickr-link] | Open
[Flipboard][Flipboard-link] | Open
[FlippsTV][FlippsTV-link] | Open
[Foursquare][Foursquare-link] | Open
[FriendlySocial][FriendlySocial-link] | Open
[Gallery][Gallery-link] | Open
[Glympse][Glympse-link] | Open
[GoogleCalendar][GoogleCalendar-link] | Open, CreateEvent
[GoogleChrome][GoogleChrome-link] | Open
[GoogleDocs][GoogleDocs-link] | Open
[GoogleDrive][GoogleDrive-link] | Open
[GoogleEarth][GoogleEarth-link] | Open
[GoogleMail][GoogleMail-link] | Open
[GoogleMaps][GoogleMaps-link] | Open, Display Directions, Search
[GooglePhotos][GooglePhotos-link] | Open
[GooglePlus][GooglePlus-link] | Open
[GoogleSheets][GoogleSheets-link] | Open
[GoogleSlides][GoogleSlides-link] | Open
[GoogleTranslate][GoogleTranslate-link] | Open
[GroupeMe][GroupeMe-link] | Open
[Heapo][Heapo-link] | Open
[HootSuite][HootSuite-link] | Open
[iBooks][iBooks-link] | Open
[IMDb][IMDb-link] | Open, Search, Title, Boxoffice, Showtimes, Feature Coming Soon, Feature Best Picture, Feature Born Today, Top rated movies, Most popular movies.
[INRIXTraffic][INRIXTraffic-link] | Open
[Instagram][Instagram-link] | Open, Camera, Media, Username, Location, Tag
[Instapaper][Instapaper-link] | Open
[iShows][iShows-link] | Open
[iTranslate][iTranslate-link] | Open, Translate
[iTunesU][iTunesU-link] | Open
[KakaoTalk][KakaoTalk-link] | Open
[Kayak][Kayak-link] | Open
[Keeper][Keeper-link] | Open
[Kik][Kik-link] | Open
[LastPass][LastPass-link] | Open
[Line][Line-link] | Open
[Linkedin][Linkedin-link] | Open
[Mail][Mail-link] | Compose
[Marktplaats][Marktplaats-link] | Open
[Marvis][Marvis-link] | Open
[Meerkat][Meerkat-link] | Open
[Messages][Messages-link] | SMS
[MobileMouse][MobileMouse-link] | Open
[Mopico][Mopico-link] | Open
[Moves][Moves-link] | Open
[Music][Music-link] | Open
[MyFitnessPal][MyFitnessPal-link] | Open
[NameShark][NameShark-link] | Open
[Netflix][Netflix-link] | Open
[Notes][Notes-link] | Open
[NPORadio][NPORadio-link] | Open
[Nunl][Nunl-link] | Open
[OneMorething][OneMorething-link] | Open
[OneDrive][OneDrive-link] | Open
[OnePassword][OnePassword-link] | Open
[Outlook][Outlook-link] | Open, Compose
[Paypal][Paypal-link] | Open
[Periscope][Periscope-link] | Open
[Phone][Phone-link] | Open
[PicCollage][PicCollage-link] | Open
[Pinterest][Pinterest-link] | Open, UserProfile, Search
[Pocket][Pocket-link] | Open
[Quora][Quora-link] | Open
[Radium][Radium-link] | Open
[RemindersApp][RemindersApp-link] | Open
[Remote][Remote-link] | Open
[Rijnmond][Rijnmond-link] | Open
[RoboForm][RoboForm-link] | Open
[RunKeeper][RunKeeper-link] | Open
[ScannerPro][ScannerPro-link] | Open
[Simplenote][Simplenote-link] | Open
[Skype][Skype-link] | Open
[Snapchat][Snapchat-link] | Open, Add
[Snapseed][Snapseed-link] | Open
[Songpop2][Songpop2-link] | Open
[Sonos][Sonos-link] | Open
[Soundflake][Soundflake-link] | Open
[Spark][Spark-link] | Compose
[StitcherRadio][StitcherRadio-link] | Open
[Strava][Strava-link] | Open
[SubwayKorea][SubwayKorea-link] | Open
[SunriseCalendar][SunriseCalendar-link] | Open
[Swarm][Swarm-link] | Open
[Super-Stickman-Golf-2][Super-Stickman-Golf-2-link] | Open
[Tango][Tango-link] | Open
[Ted][Ted-link] | Open
[Telegram][Telegram-link] | Open, SMS
[TestFlight][TestFlight-link] | Open
[Tinder][Tinder-link] | Open
[Trello][Trello-link] | Open
[Tubex][Tubex-link] | Open
[Tumblr][Tumblr-link] | Open, Dashboard, Explore, Activity, Blog, Tag
[Tweetbot][Tweetbot-link] | Timeline, Post, Mentions, Lists, Retweets, Favorites, Messages, Status, Search, Profile, Follow, Unfollow, Favorite, Unfavorite, Retweet, List
[Twitter][Twitter-link] | Status, UserHandle, UserId, List, Post, Search, Timeline, Mentions, Messages
[Twitterrific][Twitterrific-link] | Open, MentionsView, MessagesView, FavoritesView, Search, TweetID, MessageID, Post, UserProfile
[Uber][Uber-link] | Open
[Unread][Unread-link] | Open
[Ustream][Ustream-link] | Open
[Viber][Viber-link] | Open Calls Tab, Open Chats Tab
[Videos][Videos-link] | Open
[Vimeo][Vimeo-link] | Open
[Vine][Vine-link] | Open, Popular Timelines
[VIPAccess][VIPAccess-link] | Open
[Vox][Vox-link] | Open
[Voxer][Voxer-link] | Open
[VSCO][VSCO-link] | Open
[Waze][Waze-link] | Open
[WeChat][WeChat-link] | Open
[Weibo][Weibo-link] | Open
[WhatsApp][WhatsApp-link] | Open
[Whyd][Whyd-link] | Open
[Wikipanion][Wikipanion-link] | Open
[WordPress][WordPress-link] | Open
[Yammer][Yammer-link] | Open
[Yelp][Yelp-link] | Open, Search, Search Location, Search Category, Search Category Location, Business
[Youtube][Youtube-link] | Open, Open Video
[FRIL][FRIL-link] | Open
[RIDE][RIDE-link] | Open
## Getting Started

### Configure Info.plist

You must add the schemes you want to use to your app's info.plist file under `LSApplicationQueriesSchemes`. [See here for more](http://stackoverflow.com/a/30988328/456434).

### Carthage

[Carthage][carthage-link] is fully supported. Simply add the following line to your [Cartfile][cartfile-docs]:

```ruby
github "SwiftKitz/Appz" ~> 1.5.0
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

### Video Tutorial

This is a [video][video-link] tutorial on how to use Appz📱.

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
[AirLaunch-link]: http://www.iosappdownload.org/download.php?boaID=846864
[AliExpress-link]: http://www.aliexpress.com
[AllCast-link]: http://www.allcast.io
[AppleMaps-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/MapLinks/MapLinks.html#//apple_ref/doc/uid/TP40007899-CH5-SW1
[AppSettings-link]: https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/index.html#//apple_ref/c/data/UIApplicationOpenSettingsURLString
[AppStore-link]: https://developer.apple.com/library/ios/qa/qa1633/_index.html
[Audible-link]: http://www.audible.com
[BNR-link]: http://www.bnr.nl
[Box-link]: https://www.box.com/business/secure-enterprise-mobility/
[Buzzfeed-link]: http://www.buzzfeed.com
[Calendars5-link]: https://readdle.com/products/calendars5
[Camera360-link]: https://www.camera360.com/production/?production=camera360&platform=ios
[Chromecast-link]: https://www.google.com/intl/en_us/chromecast/
[CirclePay-link]: https://itunes.apple.com/app/id920164002
[Clips-link]: http://www.cleanshavenapps.com/clips/#download
[Cnet-link]: http://www.cnet.com
[CNN-link]: http://edition.cnn.com/specials/mobile-apps
[Currency-link]: http://www.xe.com/apps/iphone/
[DailyMotion-link]: http://www.dailymotion.com/
[DayCost-link]: https://www.facebook.com/iDaycost/
[DayOne-link]: http://dayoneapp.com
[Diigo-link]: https://www.diigo.com
[Documents-link]: https://readdle.com/products/documents
[Dropbox-link]: https://dropbox.com
[eBay-link]: http://www.ebay.com
[Echofon-link]: http://www.echofon.com
[Epson-link]: https://www.epson.com/cgi-bin/Store/jsp/epson-connect/mobile-printing/iprint-app.do
[Everypost-link]: http://everypost.me
[EyeEm-link]: http://pic-collage.com
[Facebook-link]: https://facebook.com
[Feedly-link]: http://feedly.com/i/welcome
[FileApp-link]: http://fileapp.com
[FindFriends-link]: http://handleopenurl.com/scheme/find-my-friends
[Fitbit-link]: https://www.fitbit.com/app
[Flickr-link]: https://www.flickr.com
[Flipboard-link]: https://flipboard.com
[FlippsTV-link]: http://www.flipps.com
[Foursquare-link]: https://foursquare.com/download
[FriendlySocial-link]: http://friendly.io/#ios
[Gallery-link]: https://www.reddit.com/r/workflow/comments/3mux7h/ios_url_schemes/
[Glympse-link]: https://glympse.com/get-glympse
[GoogleCalendar-link]: https://www.google.com/calendar/about/
[GoogleChrome-link]: https://www.google.com/chrome/
[GoogleDocs-link]: http://www.google.com/docs/about/
[GoogleDrive-link]: https://www.google.com/drive/
[GoogleEarth-link]: https://www.google.com/earth
[GoogleMail-link]: https://mail.google.com
[GoogleMaps-link]: https://maps.google.com
[GooglePhotos-link]: https://www.google.com/photos/about/
[GooglePlus-link]: https://plus.google.com
[GoogleSheets-link]: http://www.google.com/sheets/about/
[GoogleSlides-link]: http://www.google.com/slides/about/
[GoogleTranslate-link]: https://translate.google.com/about/intl/en_ALL/index.html
[GroupeMe-link]: https://groupme.com
[Heapo-link]: http://heapo.marblzz.com
[HootSuite-link]: https://hootsuite.com/products/mobile-apps/hootsuite-mobile-app
[iBooks-link]: http://handleopenurl.com/?id=694
[IMDb-link]: http://www.imdb.com
[INRIXTraffic-link]: http://inrix.com/inrix-traffic-app
[Instagram-link]: https://instagram.com
[Instapaper-link]: https://www.instapaper.com/iphone
[iShows-link]: http://ishowsapp.com
[iTranslate-link]: http://itranslateapp.com
[iTunesU-link]: https://launchcenterpro.com/dzvk6r
[KakaoTalk-link]: http://www.kakao.com/talk
[Kayak-link]: https://www.kayak.ae/
[Keeper-link]: https://keepersecurity.com/
[Kik-link]: http://www.kik.com
[LastPass-link]: https://lastpass.com
[Line-link]: http://line.me/
[Linkedin-link]: http://www.linkedin.com/
[Mail-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/MailLinks/MailLinks.html#//apple_ref/doc/uid/TP40007899-CH4-SW1
[Marktplaats-link]: http://www.marktplaats.nl
[Marvis-link]: https://appaddy.wix.com/marvis
[Meerkat-link]: http://meerkatapp.co
[Messages-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/SMSLinks/SMSLinks.html#//apple_ref/doc/uid/TP40007899-CH7-SW1
[MobileMouse-link]: http://www.mobilemouse.com
[Mopico-link]: http://mo-pi-co.com
[Moves-link]: https://www.moves-app.com
[Music-link]: http://handleopenurl.com/scheme/original-ipod-music-app
[MyFitnessPal-link]: https://www.myfitnesspal.com
[NameShark-link]: http://www.namesharkapp.com
[Netflix-link]: https://www.netflix.com
[Notes-link]: https://www.reddit.com/r/workflow/comments/3mux7h/ios_url_schemes/
[NPORadio-link]: http://forums.macrumors.com/threads/ios-8-widget-customisations-using-launcher.1782093/
[Nunl-link]: http://www.nu.nl
[OneMorething-link]: http://www.onemorething.nl
[OneDrive-link]: https://onedrive.live.com/
[OnePassword-link]: https://agilebits.com/onepassword
[Outlook-link]: http://www.outlook.com/
[Paypal-link]: https://paypal.com
[Periscope-link]: https://www.periscope.tv
[Phone-link]: https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/PhoneLinks/PhoneLinks.html
[PicCollage-link]: http://pic-collage.com
[Pinterest-link]: https://www.pinterest.com
[Pocket-link]: https://getpocket.com/ios/?ep=1
[Quora-link]: https://www.quora.com
[Radium-link]: http://catpigstudios.com
[RemindersApp-link]: http://handleopenurl.com/scheme/reminders
[Remote-link]: http://handleopenurl.com/scheme/remote
[Rijnmond-link]: http://www.rijnmond.nl
[RoboForm-link]: http://www.roboform.com/for-iphone-ipad-ios
[RunKeeper-link]: https://runkeeper.com/index
[ScannerPro-link]: https://readdle.com/products/scannerpro/
[Simplenote-link]: http://simplenote.com
[Skype-link]: http://www.skype.com/
[Snapchat-link]: https://www.snapchat.com
[Snapseed-link]: https://support.google.com/snapseed/#topic=6155507
[Songpop2-link]: https://www.songpop2.com
[Sonos-link]: http://www.sonos.com/
[Soundflake-link]: http://soundflakeapp.com
[Spark-link]: https://readdle.com/products/spark
[StitcherRadio-link]: http://www.stitcher.com
[Strava-link]: http://www.strava.com/mobile
[SubwayKorea-link]: http://blog.malangstudio.com
[SunriseCalendar-link]: https://calendar.sunrise.am
[Swarm-link]: https://www.swarmapp.com
[Super-Stickman-Golf-2-link]: http://www.noodlecake.com/games/super-stickman-golf-2/
[Tango-link]: http://www.tango.me
[Ted-link]: https://www.ted.com
[Telegram-link]: https://web.telegram.org
[TestFlight-link]: http://stackoverflow.com/questions/26667467/opening-testflight-app-from-another-app-and-deep-link-to-specific-app
[Tinder-link]: https://www.gotinder.com
[Trello-link]: https://trello.com/
[Tubex-link]: https://www.facebook.com/Tubex-744986562245828/
[Tumblr-link]: https://www.tumblr.com
[Tweetbot-link]: http://tapbots.com/tweetbot
[Twitter-link]: https://twitter.com
[Twitterrific-link]: http://twitterrific.com/ios/poweruser
[Uber-link]: https://www.uber.com
[Unread-link]: http://supertop.co/unread/
[Ustream-link]: https://www.ustream.tv/platform/watch-everywhere
[Viber-link]: http://www.viber.com
[Videos-link]: http://handleopenurl.com/scheme/ipod-video-library
[Vimeo-link]: https://vimeo.com/everywhere
[Vine-link]: https://vine.co
[VIPAccess-link]: https://m.vip.symantec.com/selectediphone.v
[Vox-link]: http://coppertino.com/vox/iphone
[Voxer-link]: http://www.voxer.com
[VSCO-link]: http://vsco.co/store/app
[Waze-link]: https://www.waze.com
[WeChat-link]: http://forums.macrumors.com/threads/ios-8-widget-customisations-using-launcher.1782093/
[Weibo-link]: http://weibo.com/login.php
[WhatsApp-link]: https://www.whatsapp.com
[Whyd-link]: http://whyd.com
[Wikipanion-link]: http://www.wikipanion.com/download.html?iphone
[WordPress-link]: https://apps.wordpress.org
[YahooWeather-link]: https://mobile.yahoo.com/weather/
[Yammer-link]: https://products.office.com/en-us/yammer/yammer-mobile-app
[Yelp-link]: https://m.yelp.com
[Youtube-link]: https://youtube.com
[FRIL-link]: https://fril.jp
[RIDE-link]: https://ride.jp
[video-link]: https://youtu.be/HYQ4vqkOunE
