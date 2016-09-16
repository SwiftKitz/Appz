//
//  Waze.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Waze: ExternalApplication {
        
        public typealias ActionType = Applications.Waze.Action
        
        public let scheme = "waze:"
        public let fallbackURL = "https://www.waze.com"
        public let appStoreId = "323229106"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Waze {
    
    public enum Action {
        case open
        case navigateToDirection(lat:String, lng:String)
    }
}

extension Applications.Waze.Action: ExternalApplicationAction {
    
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
        case .navigateToDirection(let lat, let lng):
            
            let ll = "\(lat),\(lng)"
            return ActionPaths(
                app: Path(
                    pathComponents: [""],
                    queryParameters: [
                        "ll": ll,
                        "navigate": "yes",
                    ]
                ),
                web: Path()
            )
        }
    }
}
