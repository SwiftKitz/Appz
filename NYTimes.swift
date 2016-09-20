//
//  NYTimes.swift
//  Appz
//
//  Created by Mariam AlJamea on 9/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct NYTimes: ExternalApplication {
        
        public typealias ActionType = Applications.NYTimes.Action
        
        public let scheme = "nytimes:"
        public let fallbackURL = "http://www.nytimes.com/services/mobile/index.html"
        public let appStoreId = "284862083"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.NYTimes {
    
    public enum Action {
        case open
    }
}

extension Applications.NYTimes.Action: ExternalApplicationAction {
    
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
