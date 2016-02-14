//
//  SunriseCalendar.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct SunriseCalendar: ExternalApplication {
        
        public typealias ActionType = Applications.SunriseCalendar.Action
        
        public let scheme = "sunrise:"
        public let fallbackURL = "https://calendar.sunrise.am"
        public let appStoreId = "599114150"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.SunriseCalendar {
    
    public enum Action {
        case Open
    }
}

extension Applications.SunriseCalendar.Action: ExternalApplicationAction {
    
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
