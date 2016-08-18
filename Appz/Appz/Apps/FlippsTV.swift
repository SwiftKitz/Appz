//
//  FlippsTV.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct FlippsTV: ExternalApplication {
        
        public typealias ActionType = Applications.FlippsTV.Action
        
        public let scheme = "flippshd:"
        public let fallbackURL = "http://www.flipps.com"
        public let appStoreId = "348147113"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FlippsTV {
    
    public enum Action {
        case open
    }
}

extension Applications.FlippsTV.Action: ExternalApplicationAction {
    
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
