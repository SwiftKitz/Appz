//
//  Clips.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Clips: ExternalApplication {
        
        public typealias ActionType = Applications.Clips.Action
        
        public let scheme = "clips:"
        public let fallbackURL = "http://www.cleanshavenapps.com/clips/#download"
        public let appStoreId = "917638056"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Clips {
    
    public enum Action {
        case open
    }
}

extension Applications.Clips.Action: ExternalApplicationAction {
    
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
