//
//  Word.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Word: ExternalApplication {
        
        public typealias ActionType = Applications.Word.Action
        
        public let scheme = "ms-word:"
        public let fallbackURL = "https://www.office.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Word {
    
    public enum Action {
        case Open(payload: MSPayload)
    }
}

extension Applications.Word.Action: ExternalApplicationAction {
    
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
