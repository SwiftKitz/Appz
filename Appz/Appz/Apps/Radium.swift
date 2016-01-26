//
//  Radium.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Radium: ExternalApplication {
        
        public typealias ActionType = Applications.Radium.Action
        
        public let scheme = "radium:"
        public let fallbackURL = "http://catpigstudios.com"
        public let appStoreId = "684034823"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Radium {
    
    public enum Action {
        case Open
    }
}

extension Applications.Radium.Action: ExternalApplicationAction {
    
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
