//
//  Workflow.swift
//  Appz
//
//  Created by Mariam AlJamea on 3/23/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Workflow: ExternalApplication {
        
        public typealias ActionType = Applications.Workflow.Action
        
        public let scheme = "workflow:"
        public let fallbackURL = "https://workflow.is"
        public let appStoreId = "915249334"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Workflow {
    
    public enum Action {
        case open
    }
}

extension Applications.Workflow.Action: ExternalApplicationAction {
    
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

