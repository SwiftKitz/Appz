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
        public let appStoreId = "310633997"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.WhatsApp {
    
    public enum Action {
        case Open
        case Send(abid: String?, text: String)
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
        case .Send(let abid, let text):
            return ActionPaths(
                app: Path(
                    pathComponents: ["send"],
                    queryParameters: ["text" : text, "abid": abid ?? ""]
                ),
                web: Path()
            )
            
        }
    }
}
