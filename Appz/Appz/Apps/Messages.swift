//
//  Messages.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/5/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public extension AvailableApplications {
    
    public struct Messages: ExternalApplication {
        
        public let scheme = "sms:"
        public let fallbackURL: String? = ""
    }
    
    public func messages(action: Messages.Action) -> Bool {
        return appCaller.launch(Messages(), action: action)
    }
}

// MARK: - Actions

public extension AvailableApplications.Messages {
    
    public enum Action {
        
        case SMS(phone: String)
    }
}

extension AvailableApplications.Messages.Action: ExternalApplicationAction {
    
    public var path: String {
        
        switch self {
        case .SMS(let phone):
            return "\(phone)"
        }
    }
}