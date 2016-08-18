//
//  Pinterest.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/26/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Pinterest: ExternalApplication {
        
        public typealias ActionType = Applications.Pinterest.Action
        
        public let scheme = "pinterest:"
        public let fallbackURL = "https://www.pinterest.com/"
        public let appStoreId = "429047995"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Pinterest {
    
    public enum Action {
        case open
        case user(name: String)
        case search(query: String)
    }
}


extension Applications.Pinterest.Action: ExternalApplicationAction {
    
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
            
        case .user(let name):
            return ActionPaths(
                app: Path(
                    pathComponents: ["user", name],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: [name],
                    queryParameters: [:]
                )
            )
            
        case .search(let query):
            return ActionPaths(
                app: Path(
                    pathComponents: ["search", "pins"],
                    queryParameters: ["q":query]
                ),
                web: Path(
                    pathComponents: ["search", "pins"],
                    queryParameters: ["q":query]
                )
            )
        }
    }
}

