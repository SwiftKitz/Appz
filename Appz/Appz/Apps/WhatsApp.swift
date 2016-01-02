//
//  WhatsApp.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/29/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct WhatsApp: ExternalApplication {
        
        public typealias ActionType = Applications.WhatsApp.Action
        
        public let scheme = "whatsapp:"
        public let fallbackURL = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.WhatsApp {
    
    public enum Action {
        case Open
    }
}

extension Applications.WhatsApp.Action: ExternalApplicationAction {
    
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
