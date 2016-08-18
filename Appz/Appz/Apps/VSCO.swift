//
//  VSCO.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/22/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct VSCO: ExternalApplication {
        
        public typealias ActionType = Applications.VSCO.Action
        
        public let scheme = "vsco:"
        public let fallbackURL = "http://vsco.co/store/app"
        public let appStoreId = "588013838"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.VSCO {
    
    public enum Action {
        case open
    }
}

extension Applications.VSCO.Action: ExternalApplicationAction {
    
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
