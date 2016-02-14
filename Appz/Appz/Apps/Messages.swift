//
//  Messages.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/5/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Messages: ExternalApplication {
        
        public typealias ActionType = Applications.Messages.Action

        public let scheme = "sms:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
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