//
//  FileApp.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct FileApp: ExternalApplication {
        
        public typealias ActionType = Applications.FileApp.Action
        
        public let scheme = "fileapp:"
        public let fallbackURL = "http://fileapp.com"
        public let appStoreId = "297804694"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FileApp {
    
    public enum Action {
        case Open
    }
}

extension Applications.FileApp.Action: ExternalApplicationAction {
    
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

