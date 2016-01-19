//
//  Line.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Line: ExternalApplication {
        
        public typealias ActionType = Applications.Line.Action
        
        public let scheme = "line:"
        public let fallbackURL = "http://line.me/"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Line {
    
    public enum Action {
        case Open
    }
}

extension Applications.Line.Action: ExternalApplicationAction {
    
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
