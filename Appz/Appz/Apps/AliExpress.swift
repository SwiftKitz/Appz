//
//  AliExpress.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AliExpress: ExternalApplication {
        
        public typealias ActionType = Applications.AliExpress.Action
        
        public let scheme = "aliexpress:"
        public let fallbackURL = "http://www.aliexpress.com"
        public let appStoreId = "436672029"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AliExpress {
    
    public enum Action {
        case Open
    }
}

extension Applications.AliExpress.Action: ExternalApplicationAction {
    
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
