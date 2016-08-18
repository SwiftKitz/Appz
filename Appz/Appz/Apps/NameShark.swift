//
//  NameShark.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct NameShark: ExternalApplication {
        
        public typealias ActionType = Applications.NameShark.Action
        
        public let scheme = "nameshark:"
        public let fallbackURL = "http://www.namesharkapp.com"
        public let appStoreId = "906531062"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.NameShark {
    
    public enum Action {
        case open
    }
}

extension Applications.NameShark.Action: ExternalApplicationAction {
    
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
