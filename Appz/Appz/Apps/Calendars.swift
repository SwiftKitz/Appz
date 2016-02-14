//
//  Calendars.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Calendars: ExternalApplication {
        
        public typealias ActionType = Applications.Calendars.Action
        
        public let scheme = "calendarslite:"
        public let fallbackURL = "https://readdle.com/products/calendars5"
        public let appStoreId = "608834326"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Calendars {
    
    public enum Action {
        case Open
    }
}

extension Applications.Calendars.Action: ExternalApplicationAction {
    
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

