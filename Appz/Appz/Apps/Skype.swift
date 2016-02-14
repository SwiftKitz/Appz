//
//  Skype.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Skype: ExternalApplication {
        
        public typealias ActionType = Applications.Skype.Action
        
        public let scheme = "Skype:"
        public let fallbackURL = "http://www.skype.com/"
        public let appStoreId = "304878510"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Skype {
    
    public enum Action {
        case Open
    }
}

extension Applications.Skype.Action: ExternalApplicationAction {
    
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
