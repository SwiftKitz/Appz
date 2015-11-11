//: Playground - noun: a place where people can play

import UIKit
import Appz

//: ## Features
//: Concise syntax to trigger deeplinking

let app = UIApplication.sharedApplication()
app.open.appStore(.Account(id: "395107918"))
app.open.twitter(.UserHandle("mazyod"))
app.open.appSettings(.Open)

//: Add your own application

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
