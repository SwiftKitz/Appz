//
//  Marktplaats.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Marktplaats: ExternalApplication {
        
        public typealias ActionType = Applications.Marktplaats.Action
        
        public let scheme = "marktplaats:"
        public let fallbackURL = "http://www.marktplaats.nl"
        public let appStoreId = "373963365"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Marktplaats {
    
    public enum Action {
        case open
    }
}

extension Applications.Marktplaats.Action: ExternalApplicationAction {
    
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
