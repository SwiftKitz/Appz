//
//  Podcasts.swift
//  Appz
//
//  Created by MARYAM ALJAME on 2/20/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Podcasts: ExternalApplication {
        
        public typealias ActionType = Applications.Podcasts.Action
        
        public let scheme = "podcasts:"
        public let fallbackURL = "https://itunes.apple.com/us/app/podcasts/id525463029?mt=8"
        public let appStoreId = "525463029"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Podcasts {
    
    public enum Action {
        case open
    }
}


extension Applications.Podcasts.Action: ExternalApplicationAction {
    
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
