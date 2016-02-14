//
//  ItunesU.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct ItunesU: ExternalApplication {
        
        public typealias ActionType = Applications.ItunesU.Action
        
        public let scheme = "itms-itunesu:"
        public let fallbackURL = ""
        public let appStoreId = "490217893"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.ItunesU {
    
    public enum Action {
        case Open
    }
}

extension Applications.ItunesU.Action: ExternalApplicationAction {
    
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
