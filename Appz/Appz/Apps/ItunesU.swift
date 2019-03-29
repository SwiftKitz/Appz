//
//  ItunesU.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    struct ItunesU: ExternalApplication {
        
        public typealias ActionType = Applications.ItunesU.Action
        
        public let scheme = "itms-itunesu:"
        public let fallbackURL = "https://itunes.apple.com/kw/app/itunes-u/id490217893?mt=8"
        public let appStoreId = "490217893"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.ItunesU {
    
    enum Action {
        case open
    }
}

extension Applications.ItunesU.Action: ExternalApplicationAction {
    
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
