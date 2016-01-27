//
//  Unread.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Unread: ExternalApplication {
        
        public typealias ActionType = Applications.Unread.Action
        
        public let scheme = "unread:"
        public let fallbackURL = "http://supertop.co/unread/"
        public let appStoreId = "911364254"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Unread {
    
    public enum Action {
        case Open
    }
}

extension Applications.Unread.Action: ExternalApplicationAction {
    
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

