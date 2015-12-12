//
//  Mail.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/5/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public extension Applications {
    
    public struct Mail: ExternalApplication {
        
        public let scheme = "mailto:"
        public let fallbackURL: String? = ""
    }
    
    public func mail(action: Mail.Action) -> Bool {
        return appCaller.launch(Mail(), action: action)
    }
}

public struct Email {
    
    var to: String
    var subject: String
    var body: String
    
    init(to: String = "", subject: String = "", body: String = "") {
        
        self.to = to
        self.subject = subject
        self.body = body
    }
}

// MARK: - Actions

public extension Applications.Mail {
    
    public enum Action {
        case Compose(email: Email)
    }
}


extension Applications.Mail.Action: ExternalApplicationAction {
    
    public var path: String {
        
        switch self {
        case .Compose(let email):
            return escape(String(format: "%@?subject=%@&body=%@",
                email.to, email.subject, email.body))
        }
    }
}