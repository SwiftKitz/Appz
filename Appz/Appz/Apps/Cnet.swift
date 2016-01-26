//
//  Cnet.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Cnet: ExternalApplication {
        
        public typealias ActionType = Applications.Cnet.Action
        
        public let scheme = "cnet:"
        public let fallbackURL = "http://www.cnet.com"
        public let appStoreId = "383989837"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Cnet {
    
    public enum Action {
        case Open
    }
}

extension Applications.Cnet.Action: ExternalApplicationAction {
    
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
