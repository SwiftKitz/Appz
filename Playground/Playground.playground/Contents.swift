//: Playground - noun: a place where people can play

import UIKit
import Appz

//: # Appz 📱
//: ### Deeplinking to external applications made easy!

//: ## Features
//: Concise syntax to trigger deeplinking

let app = UIApplication.sharedApplication()
app.open.appStore(.Account(id: "395107918"))
app.open.twitter(.UserHandle("mazyod"))
app.open.appSettings(.Open)

//: Transparent web fallback

// In case the user doesn't have twitter installed, it will fallback to
// https://twitter.com/statuses/2
app.open.twitter(.Status(id: "2"))

//: Add your own application

// Applications are recommended to be part of the 
// "Applicaitons" namespace
extension Applications {
    // Define your application as a type that
    // conforms to "ExternalApplication"
    struct MyApp: ExternalApplication {
        
        let scheme = "myapp:"
        let fallbackURL: String? = nil
    }
    // Add a function to easily access your app from 
    // the application caller
    func myApp(action: MyApp.Action) -> Bool {
        return appCaller.launch(MyApp(), action: action)
    }
}
// Finally, you define the actions your app supports
extension Applications.MyApp {
    
    enum Action {
        case Open
    }
}

extension Applications.MyApp.Action: ExternalApplicationAction {
    // Each action should provide an app path and web path to be
    // added to the associated URL
    var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths()
        }
    }
}

app.open.myApp(.Open)
