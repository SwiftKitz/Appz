//
//  Moves.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/22/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Moves: ExternalApplication {
        
        public typealias ActionType = Applications.Moves.Action
        
        public let scheme = "moves:"
        public let fallbackURL = "https://www.moves-app.com"
        public let appStoreId = "509204969"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Moves {
    
    public enum Action {
        case Open
    }
}

extension Applications.Moves.Action: ExternalApplicationAction {
    
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
