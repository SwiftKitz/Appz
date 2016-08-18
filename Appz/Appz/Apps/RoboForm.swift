//
//  RoboForm.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/19/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct RoboForm: ExternalApplication {
        
        public typealias ActionType = Applications.RoboForm.Action
        
        public let scheme = "roboform:"
        public let fallbackURL = "http://www.roboform.com/for-iphone-ipad-ios"
        public let appStoreId = "331787573"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.RoboForm {
    
    public enum Action {
        case open
    }
}

extension Applications.RoboForm.Action: ExternalApplicationAction {
    
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
