//
//  GooglePlus.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GooglePlus: ExternalApplication {
        
        public typealias ActionType = Applications.GooglePlus.Action
        
        public let scheme = "gplus:"
        public let fallbackURL = "https://plus.google.com/"
        public let appStoreId = "447119634"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GooglePlus {
    
    public enum Action {
        case Open
    }
}

extension Applications.GooglePlus.Action: ExternalApplicationAction {
    
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
