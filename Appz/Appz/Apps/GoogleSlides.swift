//
//  GoogleSlides.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleSlides: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleSlides.Action
        
        public let scheme = "googleslides:"
        public let fallbackURL = "http://www.google.com/slides/about/"
        public let appStoreId = "879478102"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleSlides {
    
    public enum Action {
        case open
    }
}

extension Applications.GoogleSlides.Action: ExternalApplicationAction {
    
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
