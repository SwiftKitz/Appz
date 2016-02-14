//
//  Meerkat.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Meerkat: ExternalApplication {
        
        public typealias ActionType = Applications.Meerkat.Action
        
        public let scheme = "meerkat:"
        public let fallbackURL = "http://meerkatapp.co"
        public let appStoreId = "954105918"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Meerkat {
    
    public enum Action {
        case Open
    }
}

extension Applications.Meerkat.Action: ExternalApplicationAction {
    
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
