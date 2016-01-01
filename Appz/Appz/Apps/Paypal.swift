//
//  Paypal.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Paypal: ExternalApplication {
        
        public typealias ActionType = Applications.Paypal.Action
        
        public let scheme = "paypal:"
        public let fallbackURL = "https://paypal.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Paypal {
    
    public enum Action {
        case Open
    }
}

extension Applications.Paypal.Action: ExternalApplicationAction {
    
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
