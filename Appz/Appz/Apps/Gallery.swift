//
//  Gallery.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    struct Gallery: ExternalApplication {
        
        public typealias ActionType = Applications.Gallery.Action
        
        public let scheme = "photos-redirect:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Gallery {
    
    enum Action {
        case open
    }
}

extension Applications.Gallery.Action: ExternalApplicationAction {
    
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
