//
//  GoogleChrome.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleChrome: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleChrome.Action
        
        public let scheme = "googlechrome:"
        public let fallbackURL = "https://www.google.com/chrome/"
        public let appStoreId = "535886823"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleChrome {
    
    public enum Action {
        case open
    }
}

extension Applications.GoogleChrome.Action: ExternalApplicationAction {
    
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
