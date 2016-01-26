//
//  Linkedin.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/28/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Linkedin: ExternalApplication {
        
        public typealias ActionType = Applications.Linkedin.Action
        
        public let scheme = "linkedin:"
        public let fallbackURL = "http://www.linkedin.com/"
        public let appStoreId = "288429040"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Linkedin {
    
    public enum Action {
        case Open
    }
}

extension Applications.Linkedin.Action: ExternalApplicationAction {
    
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
