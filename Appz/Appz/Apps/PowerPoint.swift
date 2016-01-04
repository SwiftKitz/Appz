//
//  PowerPoint.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct PowerPoint: ExternalApplication {
        
        public typealias ActionType = Applications.PowerPoint.Action
        
        public let scheme = "ms-powerpoint:"
        public let fallbackURL = "https://www.office.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.PowerPoint {
    
    public enum Action {
        case Open(payload: MSPayload)
    }
}

extension Applications.PowerPoint.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open(let payload):
            
            return ActionPaths(
                app: Path(
                    pathComponents: ["ofe\(payload.buildURL())"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
