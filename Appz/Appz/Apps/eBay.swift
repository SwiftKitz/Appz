//
//  eBay.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct eBay: ExternalApplication {
        
        public typealias ActionType = Applications.eBay.Action
        
        public let scheme = "eBay:"
        public let fallbackURL = "http://www.ebay.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.eBay {
    
    public enum Action {
        case Open
    }
}

extension Applications.eBay.Action: ExternalApplicationAction {
    
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
