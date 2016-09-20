//
//  GoogleCalendar.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleCalendar: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleCalendar.Action
        
        public let scheme = "com.google.calendar:"
        public let fallbackURL = "https://www.google.com/calendar/about/"
        public let appStoreId = "909319292"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleCalendar {
    
    public enum Action {
        case open
        case createEvent
    }
}

extension Applications.GoogleCalendar.Action: ExternalApplicationAction {
    
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
            
        case .createEvent:
            return ActionPaths(
                app: Path(
                    pathComponents: [""],
                    queryParameters: [
                        "action":"create",
                    ]
                ),
                web: Path()
            )
        }
    }
}
