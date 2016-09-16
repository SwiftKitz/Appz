//
//  OneDrive.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct OneDrive: ExternalApplication {
        
        public typealias ActionType = Applications.OneDrive.Action
        
        public let scheme = "ms-onedrive:"
        public let fallbackURL = "https://onedrive.live.com/"
        public let appStoreId = "477537958"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.OneDrive {
    
    public enum Action {
        case open
    }
}

extension Applications.OneDrive.Action: ExternalApplicationAction {
    
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
