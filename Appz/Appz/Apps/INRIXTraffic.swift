//
//  INRIXTraffic.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct INRIXTraffic: ExternalApplication {
        
        public typealias ActionType = Applications.INRIXTraffic.Action
        
        public let scheme = "inrixtraffic:"
        public let fallbackURL = "http://inrix.com/inrix-traffic-app/"
        public let appStoreId = "324384027"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.INRIXTraffic {
    
    public enum Action {
        case Open
    }
}

extension Applications.INRIXTraffic.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
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
