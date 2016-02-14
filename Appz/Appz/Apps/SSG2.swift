//
//  SSG2.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct SSG2: ExternalApplication {
        
        public typealias ActionType = Applications.SSG2.Action
        
        public let scheme = "SSG2:"
        public let fallbackURL = "http://www.noodlecake.com/games/super-stickman-golf-2/"
        public let appStoreId = "585259203"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.SSG2 {
    
    public enum Action {
        case Open
    }
}

extension Applications.SSG2.Action: ExternalApplicationAction {
    
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
