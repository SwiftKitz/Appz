//
//  TestFlight.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct TestFlight: ExternalApplication {
        
        public typealias ActionType = Applications.TestFlight.Action
        
        public let scheme = "itms-beta:"
        public let fallbackURL = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.TestFlight {
    
    public enum Action {
        case Open
    }
}

extension Applications.TestFlight.Action: ExternalApplicationAction {
    
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
