//
//  Kayak.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Kayak: ExternalApplication {
        
        public typealias ActionType = Applications.Kayak.Action
        
        public let scheme = "kayak:"
        public let fallbackURL = "https://www.kayak.ae/"
        public let appStoreId = "305204535"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Kayak {
    
    public enum Action {
        case Open
    }
}

extension Applications.Kayak.Action: ExternalApplicationAction {
    
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
