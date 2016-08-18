//
//  Ebay.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Ebay: ExternalApplication {
        
        public typealias ActionType = Applications.Ebay.Action
        
        public let scheme = "eBay:"
        public let fallbackURL = "http://www.ebay.com/"
        public let appStoreId = "282614216"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Ebay {
    
    public enum Action {
        case open
    }
}

extension Applications.Ebay.Action: ExternalApplicationAction {
    
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
