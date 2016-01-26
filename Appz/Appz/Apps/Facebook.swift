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
        case Open
        case Profile
        case Notifications
        case Feed
    }
}

extension Applications.Facebook.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .Profile:
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
            
        case .Notifications:
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
            
        case .Feed:
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
        }
    }
}

