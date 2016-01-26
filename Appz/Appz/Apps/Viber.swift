//
//  Viber.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/30/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Viber: ExternalApplication {
        
        public typealias ActionType = Applications.Viber.Action
        
        public let scheme = "viber:"
        public let fallbackURL = "http://www.viber.com/"
        public let appStoreId = "382617920"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Viber {
    
    public enum Action {
        
        case CallsTab
        case ChatsTab
    }
}

extension Applications.Viber.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
            
        case .CallsTab:
            return ActionPaths(
                app: Path(
                    pathComponents: ["calls"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .ChatsTab:
            return ActionPaths(
                app: Path(
                    pathComponents: ["chats"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
