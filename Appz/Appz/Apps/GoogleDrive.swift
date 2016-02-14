//
//  GoogleDrive.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleDrive: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleDrive.Action
        
        public let scheme = "googledrive:"
        public let fallbackURL = "https://www.google.com/drive/"
        public let appStoreId = "507874739"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleDrive {
    
    public enum Action {
        case Open
    }
}

extension Applications.GoogleDrive.Action: ExternalApplicationAction {
    
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
