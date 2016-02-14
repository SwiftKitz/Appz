//
//  Vox.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Vox: ExternalApplication {
        
        public typealias ActionType = Applications.Vox.Action
        
        public let scheme = "com.coppertino.vox:"
        public let fallbackURL = "http://coppertino.com/vox/iphone"
        public let appStoreId = "916215494"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Vox {
    
    public enum Action {
        case Open
    }
}

extension Applications.Vox.Action: ExternalApplicationAction {
    
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

