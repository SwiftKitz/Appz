//
//  Videos.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Videos: ExternalApplication {
        
        public typealias ActionType = Applications.Videos.Action
        
        public let scheme = "videos:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Videos {
    
    public enum Action {
        case open
    }
}

extension Applications.Videos.Action: ExternalApplicationAction {
    
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
