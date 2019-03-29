//
//  YahooWeather.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/22/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    struct YahooWeather: ExternalApplication {
        
        public typealias ActionType = Applications.YahooWeather.Action
        
        public let scheme = "yweather:"
        public let fallbackURL = "https://mobile.yahoo.com/weather/"
        public let appStoreId = "628677149"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.YahooWeather {
    
    enum Action {
        case open
    }
}

extension Applications.YahooWeather.Action: ExternalApplicationAction {
    
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
