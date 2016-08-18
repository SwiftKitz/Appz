//
//  Marvis.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Marvis: ExternalApplication {
        
        public typealias ActionType = Applications.Marvis.Action
        
        public let scheme = "marvis:"
        public let fallbackURL = "http://appaddy.wix.com/marvis"
        public let appStoreId = "971737469"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Marvis {
    
    public enum Action {
        case open
    }
}

extension Applications.Marvis.Action: ExternalApplicationAction {
    
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
