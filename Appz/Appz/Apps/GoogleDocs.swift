//
//  GoogleDocs.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleDocs: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleDocs.Action
        
        public let scheme = "googledocs:"
        public let fallbackURL = "http://www.google.com/docs/about/"
        public let appStoreId = "842842640"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleDocs {
    
    public enum Action {
        case Open
    }
}

extension Applications.GoogleDocs.Action: ExternalApplicationAction {
    
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

