//
//  VIPAccess.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct VIPAccess: ExternalApplication {
        
        public typealias ActionType = Applications.VIPAccess.Action
        
        public let scheme = "vipsymantec:"
        public let fallbackURL = "https://m.vip.symantec.com/selectediphone.v"
        public let appStoreId = "307658513"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.VIPAccess {
    
    public enum Action {
        case open
    }
}

extension Applications.VIPAccess.Action: ExternalApplicationAction {
    
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

