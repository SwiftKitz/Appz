//
//  WeChat.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct WeChat: ExternalApplication {
        
        public typealias ActionType = Applications.WeChat.Action
        
        public let scheme = "wechat:"
        public let fallbackURL = ""
        public let appStoreId = "414478124"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.WeChat {
    
    public enum Action {
        case Open
    }
}

extension Applications.WeChat.Action: ExternalApplicationAction {
    
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
