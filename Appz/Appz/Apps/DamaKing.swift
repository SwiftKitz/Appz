//
//  DamaKing.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/26/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct DamaKing: ExternalApplication {
        
        public typealias ActionType = Applications.DamaKing.Action
        
        public let scheme = "damaking:"
        public let fallbackURL = "http://level3.io"
        public let appStoreId = "442570707"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.DamaKing {
    
    public enum Action {
        case open
    }
}

extension Applications.DamaKing.Action: ExternalApplicationAction {
    
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
