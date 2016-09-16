//
//  Weibo.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Weibo: ExternalApplication {
        
        public typealias ActionType = Applications.Weibo.Action
        
        public let scheme = "weibo:"
        public let fallbackURL = "http://weibo.com/login.php"
        public let appStoreId = "350962117"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Weibo {
    
    public enum Action {
        case open
    }
}

extension Applications.Weibo.Action: ExternalApplicationAction {
    
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
