//
//  Flickr.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Flickr: ExternalApplication {
        
        public typealias ActionType = Applications.Flickr.Action
        
        public let scheme = "Flickr:"
        public let fallbackURL = "https://www.flickr.com/"
        public let appStoreId = "328407587"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Flickr {
    
    public enum Action {
        case Open
    }
}

extension Applications.Flickr.Action: ExternalApplicationAction {
    
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
