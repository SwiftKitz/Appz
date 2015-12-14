//
//  Messages.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/5/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public extension Applications {
    
    public struct Messages: ExternalApplication {
        
        public let scheme = "sms:"
        public let fallbackURL: String? = ""
    }
    
    public func messages(action: Messages.Action) -> Bool {
        return appCaller.launch(Messages(), action: action)
    }
}

// MARK: - Actions

public extension Applications.Messages {
    
    public enum Action {
        
        case SMS(phone: String)
    }
}

extension Applications.Messages.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .SMS(let phone):
            return ActionPaths(
                app: Path(
                    pathComponents: [phone],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}