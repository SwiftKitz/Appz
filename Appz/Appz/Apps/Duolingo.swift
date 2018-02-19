//
//  Duolingo.swift
//  Appz
//
//  Created by MARYAM ALJAME on 2/19/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Duolingo: ExternalApplication {
        
        public typealias ActionType = Applications.Duolingo.Action
        
        public let scheme = "duolingo:"
        public let fallbackURL = "https://www.duolingo.com"
        public let appStoreId = "570060128"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Duolingo {
    
    public enum Action {
        case open
    }
}

extension Applications.Duolingo.Action: ExternalApplicationAction {
    
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
