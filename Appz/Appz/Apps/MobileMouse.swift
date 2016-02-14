//
//  MobileMouse.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct MobileMouse: ExternalApplication {
        
        public typealias ActionType = Applications.MobileMouse.Action
        
        public let scheme = "mobilemouse:"
        public let fallbackURL = "http://www.mobilemouse.com"
        public let appStoreId = "356395556"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.MobileMouse {
    
    public enum Action {
        case Open
    }
}

extension Applications.MobileMouse.Action: ExternalApplicationAction {
    
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
