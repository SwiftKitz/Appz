//
//  Itranslate.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/27/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Itranslate: ExternalApplication {
        
        public typealias ActionType = Applications.Itranslate.Action
        
        public let scheme = "itranslate:"
        public let fallbackURL = "http://itranslateapp.com/"
        public let appStoreId = "288113403"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Itranslate {
    
    public enum Action {
        
        case open
        case translate(from: String, to: String, text: String)
    }
}


extension Applications.Itranslate.Action: ExternalApplicationAction {
    
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
            
        case .translate(let from, let to, let text):
            return ActionPaths(
                app: Path(
                    pathComponents: ["translate"],
                    queryParameters: [
                        "from": from,
                        "to": to,
                        "text": text
                    ]
                ),
                web: Path()
            )
        }
    }
}
