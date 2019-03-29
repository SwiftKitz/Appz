//
//  Heapo.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    struct Heapo: ExternalApplication {
        
        public typealias ActionType = Applications.Heapo.Action
        
        public let scheme = "heap:"
        public let fallbackURL = "https://itunes.apple.com/us/app/heapo-clipboard-management-widget-copy-paste-clips/id921961118?mt=8"
        public let appStoreId = "921961118"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Heapo {
    
    enum Action {
        case open
    }
}

extension Applications.Heapo.Action: ExternalApplicationAction {
    
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
