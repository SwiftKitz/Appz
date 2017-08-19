//
//  Behance.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/17/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Behance: ExternalApplication {
        
        public typealias ActionType = Applications.Behance.Action
        
        public let scheme = "behance:"
        public let fallbackURL = "https://www.behance.net/"
        public let appStoreId = "489667151"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Behance {
    
    public enum Action {
        case open
        case userProfile(String)
    }
}

extension Applications.Behance.Action: ExternalApplicationAction {
    
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
            
        case .userProfile(let profile):
            return ActionPaths(
                app: Path(
                    pathComponents: ["profile", profile],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: [profile],
                    queryParameters: [:]
                )
            )
        }
    }
}
