//
//  CNN.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct CNN: ExternalApplication {
        
        public typealias ActionType = Applications.CNN.Action
        
        public let scheme = "cnn:"
        public let fallbackURL = "http://edition.cnn.com/specials/mobile-apps"
        public let appStoreId = "331786748"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.CNN {
    
    public enum Action {
        case open
    }
}

extension Applications.CNN.Action: ExternalApplicationAction {
    
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
