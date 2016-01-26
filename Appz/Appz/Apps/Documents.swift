//
//  Documents.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Documents: ExternalApplication {
        
        public typealias ActionType = Applications.Documents.Action
        
        public let scheme = "rdocs:"
        public let fallbackURL = "https://readdle.com/products/documents/"
        public let appStoreId = "364901807"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Documents {
    
    public enum Action {
        case Open
    }
}

extension Applications.Documents.Action: ExternalApplicationAction {
    
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
