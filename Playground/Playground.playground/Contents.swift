//: Playground - noun: a place where people can play

import UIKit
import Appz

//: # Appz 📱
//: ### Deeplinking to external applications made easy!

//: ## Features
//: Concise syntax to trigger deeplinking

let app = UIApplication.sharedApplication()
app.canOpen(Applications.Instagram())
app.open(Applications.AppStore(), action: .Account(id: "395107918"))
app.open(Applications.AppSettings(), action: .Open)

//: Transparent web fallback

// In case the user doesn't have twitter installed, it will fallback to
// https://twitter.com/statuses/2
app.open(Applications.Twitter(), action: .Status(id: "2"))

//: Add your own application

// Applications are recommended to be part of the 
// "Applicaitons" namespace
extension Applications {
    // Define your application as a type that
    // conforms to "ExternalApplication"
    struct MyApp: ExternalApplication {
        
        typealias ActionType = Applications.MyApp.Action
        
        let scheme = "myapp:"
        let fallbackURL = ""
    }
}
// Finally, you define the actions your app supports
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
