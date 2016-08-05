//
//  Yammer.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Yammer: ExternalApplication {
        
        public typealias ActionType = Applications.Yammer.Action
        
        public let scheme = "yammer:"
        public let fallbackURL = "https://products.office.com/en-us/yammer/yammer-mobile-app"
        public let appStoreId = "289559439"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Yammer {
    
    public enum Action {
        case open
    }
}

extension Applications.Yammer.Action: ExternalApplicationAction {
    
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
