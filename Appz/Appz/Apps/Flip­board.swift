//
//  Flip­board.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Flip­board: ExternalApplication {
        
        public typealias ActionType = Applications.Flip­board.Action
        
        public let scheme = "Flipboard:"
        public let fallbackURL = "https://flipboard.com"
        public let appStoreId = "358801284"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Flip­board {
    
    public enum Action {
        case Open
    }
}

extension Applications.Flip­board.Action: ExternalApplicationAction {
    
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
