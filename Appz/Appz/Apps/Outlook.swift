//
//  Outlook.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Outlook: ExternalApplication {
        
        public typealias ActionType = Applications.Outlook.Action
        
        public let scheme = "ms-outlook:"
        public let fallbackURL = "http://www.outlook.com/"
        public let appStoreId = "951937596"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Outlook {
    
    public enum Action {
        case Open
        case Compose(to: String, subject: String)
    }
}

extension Applications.Outlook.Action: ExternalApplicationAction {
    
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
            
        case .Compose(let to, let subject):
            return ActionPaths(
                app: Path(
                    pathComponents: ["compose"],
                    queryParameters: [
                        "to": to,
                        "subject": subject,
                    ]
                ),
                web: Path()
            )
        }
    }
}
