//
//  OneNote.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct OneNote: ExternalApplication {
        
        public typealias ActionType = Applications.OneNote.Action
        
        public let scheme = "onenote:"
        public let fallbackURL = "https://www.office.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.OneNote {
    
    public enum Action {
        case Open(payload: MSPayload)
    }
}

extension Applications.OneNote.Action: ExternalApplicationAction {
    
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
