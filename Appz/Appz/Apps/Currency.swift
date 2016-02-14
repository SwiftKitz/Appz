//
//  Currency.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Currency: ExternalApplication {
        
        public typealias ActionType = Applications.Currency.Action
        
        public let scheme = "Currency:"
        public let fallbackURL = "http://www.xe.com/apps/iphone/"
        public let appStoreId = "315241195"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Currency {
    
    public enum Action {
        case Open
    }
}

extension Applications.Currency.Action: ExternalApplicationAction {
    
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

