//
//  Chromecast.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Chromecast: ExternalApplication {
        
        public typealias ActionType = Applications.Chromecast.Action
        
        public let scheme = "chromecast:"
        public let fallbackURL = "https://www.google.com/intl/en_us/chromecast/"
        public let appStoreId = "680819774"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Chromecast {
    
    public enum Action {
        case Open
    }
}

extension Applications.Chromecast.Action: ExternalApplicationAction {
    
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
