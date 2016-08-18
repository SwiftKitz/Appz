//
//  DailyMotion.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct DailyMotion: ExternalApplication {
        
        public typealias ActionType = Applications.DailyMotion.Action
        
        public let scheme = "dailymotion:"
        public let fallbackURL = "http://www.dailymotion.com/"
        public let appStoreId = "336978041"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.DailyMotion {
    
    public enum Action {
        case open
    }
}

extension Applications.DailyMotion.Action: ExternalApplicationAction {
    
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
