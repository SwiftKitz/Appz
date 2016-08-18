//
//  RemindersApp.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct RemindersApp: ExternalApplication {
        
        public typealias ActionType = Applications.RemindersApp.Action
        
        public let scheme = "x-apple-reminder:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.RemindersApp {
    
    public enum Action {
        case open
    }
}

extension Applications.RemindersApp.Action: ExternalApplicationAction {
    
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
