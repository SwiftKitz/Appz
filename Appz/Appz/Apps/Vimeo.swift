//
//  Vimeo.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Vimeo: ExternalApplication {
        
        public typealias ActionType = Applications.Vimeo.Action
        
        public let scheme = "vimeo:"
        public let fallbackURL = "https://vimeo.com/everywhere"
        public let appStoreId = "425194759"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Vimeo {
    
    public enum Action {
        case Open
    }
}

extension Applications.Vimeo.Action: ExternalApplicationAction {
    
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

