//
//  Facebook.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/23/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Facebook: ExternalApplication {
        
        public typealias ActionType = Applications.Facebook.Action
        
        public let scheme = "fb:"
        public let fallbackURL = "https://www.facebook.com/"
        public let appStoreId = "284882215"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Facebook {
    
    public enum Action {
        case open
        case profile
        case notifications
        case feed
        case page(String)
        case event(String)
    }
}

extension Applications.Facebook.Action: ExternalApplicationAction {
    
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
            
        case .profile:
            return ActionPaths(
                app: Path(
                    pathComponents: ["profile"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: [],
                    queryParameters: [:]
                )
            )
            
        case .notifications:
            return ActionPaths(
                app: Path(
                    pathComponents: ["notifications"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: [],
                    queryParameters: [:]
                )
            )
            
        case .feed:
            return ActionPaths(
                app: Path(
                    pathComponents: ["feed"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: [],
                    queryParameters: [:]
                )
            )
        
        case .page(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["page"],
                    queryParameters: ["id": id]
                ),
                web: Path(
                    pathComponents: [id],
                    queryParameters: [:]
                )
            )
        case .event(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["event"],
                    queryParameters: ["id": id]
                ),
                web: Path(
                    pathComponents: [id],
                    queryParameters: [:]
                )
            )
        }
    }
}
