//
//  NPORadio.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct NPORadio: ExternalApplication {
        
        public typealias ActionType = Applications.NPORadio.Action
        
        public let scheme = "nporadio1:"
        public let fallbackURL = ""
        public let appStoreId = "356566983"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.NPORadio {
    
    public enum Action {
        case open
    }
}

extension Applications.NPORadio.Action: ExternalApplicationAction {
    
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
