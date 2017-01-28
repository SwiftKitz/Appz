//
//  IMovie.swift
//  
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct IMovie: ExternalApplication {
        
        public typealias ActionType = Applications.IMovie.Action
        
        public let scheme = "iMovie:"
        public let fallbackURL = ""
        public let appStoreId = "377298193"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.IMovie {
    
    public enum Action {
        case open
    }
}

extension Applications.IMovie.Action: ExternalApplicationAction {
    
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
