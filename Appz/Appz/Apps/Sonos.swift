//
//  Sonos.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Sonos: ExternalApplication {
        
        public typealias ActionType = Applications.Sonos.Action
        
        public let scheme = "sonos:"
        public let fallbackURL = "http://www.sonos.com/"
        public let appStoreId = "293523031"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Sonos {
    
    public enum Action {
        case Open
    }
}

extension Applications.Sonos.Action: ExternalApplicationAction {
    
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
        }
    }
}
