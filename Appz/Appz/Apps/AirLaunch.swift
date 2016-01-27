//
//  AirLaunch.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AirLaunch: ExternalApplication {
        
        public typealias ActionType = Applications.AirLaunch.Action
        
        public let scheme = "airlaunch:"
        public let fallbackURL = "http://www.iosappdownload.org/download.php?boaID=846864"
        public let appStoreId = "993479740"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AirLaunch {
    
    public enum Action {
        case Open
    }
}

extension Applications.AirLaunch.Action: ExternalApplicationAction {
    
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
