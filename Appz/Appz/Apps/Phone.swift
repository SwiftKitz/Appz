//
//  Phone.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Phone: ExternalApplication {
        
        public typealias ActionType = Applications.Phone.Action
        
        public let scheme = "tel:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Phone {
    
    public enum Action {
        case Open(number: String)
    }
}

extension Applications.Phone.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open(let number):
            return ActionPaths(
                app: Path(
                    pathComponents: [number],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
