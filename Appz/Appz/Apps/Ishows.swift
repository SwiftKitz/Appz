//
//  Ishows.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Ishows: ExternalApplication {
        
        public typealias ActionType = Applications.Ishows.Action
        
        public let scheme = "ishows:"
        public let fallbackURL = "http://ishowsapp.com"
        public let appStoreId = "992387872"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Ishows {
    
    public enum Action {
        case Open
    }
}

extension Applications.Ishows.Action: ExternalApplicationAction {
    
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
