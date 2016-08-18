//
//  Wikipanion.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Wikipanion: ExternalApplication {
        
        public typealias ActionType = Applications.Wikipanion.Action
        
        public let scheme = "wikipanion:"
        public let fallbackURL = "http://www.wikipanion.com/download.html?iphone"
        public let appStoreId = "288349436"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Wikipanion {
    
    public enum Action {
        case open
    }
}

extension Applications.Wikipanion.Action: ExternalApplicationAction {
    
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
