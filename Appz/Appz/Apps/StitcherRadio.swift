//
//  StitcherRadio.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct StitcherRadio: ExternalApplication {
        
        public typealias ActionType = Applications.StitcherRadio.Action
        
        public let scheme = "stitcher:"
        public let fallbackURL = "http://www.stitcher.com"
        public let appStoreId = "288087905"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.StitcherRadio {
    
    public enum Action {
        case Open
    }
}

extension Applications.StitcherRadio.Action: ExternalApplicationAction {
    
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
