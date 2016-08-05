//
//  HootSuite.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct HootSuite: ExternalApplication {
        
        public typealias ActionType = Applications.HootSuite.Action
        
        public let scheme = "hootsuite:"
        public let fallbackURL = "https://hootsuite.com/products/mobile-apps/hootsuite-mobile-app"
        public let appStoreId = "341249709"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.HootSuite {
    
    public enum Action {
        case open
    }
}

extension Applications.HootSuite.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .open:
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
