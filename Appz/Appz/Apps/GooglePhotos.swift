//
//  GooglePhotos.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GooglePhotos: ExternalApplication {
        
        public typealias ActionType = Applications.GooglePhotos.Action
        
        public let scheme = "googlephotos:"
        public let fallbackURL = "https://www.google.com/photos/about/"
        public let appStoreId = "962194608"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GooglePhotos {
    
    public enum Action {
        case Open
    }
}

extension Applications.GooglePhotos.Action: ExternalApplicationAction {
    
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
