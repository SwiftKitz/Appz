//
//  Instapaper.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Instapaper: ExternalApplication {
        
        public typealias ActionType = Applications.Instapaper.Action
        
        public let scheme = "instapaper:"
        public let fallbackURL = "https://www.instapaper.com/iphone"
        public let appStoreId = "288545208"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Instapaper {
    
    public enum Action {
        case open
    }
}

extension Applications.Instapaper.Action: ExternalApplicationAction {
    
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
