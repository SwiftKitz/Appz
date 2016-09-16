//
//  Telegram.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/28/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Telegram: ExternalApplication {
        
        public typealias ActionType = Applications.Telegram.Action
        
        public let scheme = "tg:"
        public let fallbackURL = "https://web.telegram.org/"
        public let appStoreId = "686449807"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Telegram {
    
    public enum Action {
        case open
        case msg(message: String, phone: String)
    }
}

extension Applications.Telegram.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .msg(let message, let phone):
            return ActionPaths(
                app: Path(
                    pathComponents: ["msg"],
                    queryParameters: [
                        "text": message,
                        "to": phone,
                    ]
                ),
                web: Path()
            )
        }
    }
}
