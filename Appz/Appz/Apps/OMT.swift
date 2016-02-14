//
//  OMT.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct OMT: ExternalApplication {
        
        public typealias ActionType = Applications.OMT.Action
        
        public let scheme = "onemorething:"
        public let fallbackURL = "http://www.onemorething.nl"
        public let appStoreId = "483523981"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.OMT {
    
    public enum Action {
        case Open
    }
}

extension Applications.OMT.Action: ExternalApplicationAction {
    
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
