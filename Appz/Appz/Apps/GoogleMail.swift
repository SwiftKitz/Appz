//
//  GoogleMail.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleMail: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleMail.Action
        
        public let scheme = "googlegmail:"
        public let fallbackURL = "https://mail.google.com/"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleMail {
    
    public enum Action {
        case Open
    }
}

extension Applications.GoogleMail.Action: ExternalApplicationAction {
    
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
