//
//  Glympse.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/19/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Glympse: ExternalApplication {
        
        public typealias ActionType = Applications.Glympse.Action
        
        public let scheme = "glympse:"
        public let fallbackURL = "https://glympse.com/get-glympse"
        public let appStoreId = "330316698"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Glympse {
    
    public enum Action {
        case Open
    }
}

extension Applications.Glympse.Action: ExternalApplicationAction {
    
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
