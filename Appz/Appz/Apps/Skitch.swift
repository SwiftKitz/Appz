//
//  Skitch.swift
//  Appz
//
//  Created by Mariam AlJamea on 9/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Skitch: ExternalApplication {
        
        public typealias ActionType = Applications.Skitch.Action
        
        public let scheme = "skitch:"
        public let fallbackURL = "https://evernote.com/skitch/"
        public let appStoreId = "490505997"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Skitch {
    
    public enum Action {
        case open
    }
}

extension Applications.Skitch.Action: ExternalApplicationAction {
    
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
