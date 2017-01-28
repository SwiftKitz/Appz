//
//  Photos.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Photos: ExternalApplication {
        
        public typealias ActionType = Applications.Photos.Action
        
        public let scheme = "photos-redirect:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Photos {
    
    public enum Action {
        case open
    }
}

extension Applications.Photos.Action: ExternalApplicationAction {
    
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
        }
    }
}
