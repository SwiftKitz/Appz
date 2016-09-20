//
//  Camera360.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Camera360: ExternalApplication {
        
        public typealias ActionType = Applications.Camera360.Action
        
        public let scheme = "camera360:"
        public let fallbackURL = "https://www.camera360.com/production/?production=camera360&platform=ios"
        public let appStoreId = "443354861"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Camera360 {
    
    public enum Action {
        case open
    }
}

extension Applications.Camera360.Action: ExternalApplicationAction {
    
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
