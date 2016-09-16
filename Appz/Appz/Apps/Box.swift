//
//  Box.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Box: ExternalApplication {
        
        public typealias ActionType = Applications.Box.Action
        
        public let scheme = "box:"
        public let fallbackURL = "https://www.box.com/business/secure-enterprise-mobility/"
        public let appStoreId = "290853822"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Box {
    
    public enum Action {
        case open
    }
}

extension Applications.Box.Action: ExternalApplicationAction {
    
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
