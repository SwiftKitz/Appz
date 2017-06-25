//
//  Ayah.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/24/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Ayah: ExternalApplication {
        
        public typealias ActionType = Applications.Ayah.Action
        
        public let scheme = "ayah:"
        public let fallbackURL = "http://ayahapp.com"
        public let appStoreId = "706037876"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Ayah {
    
    public enum Action {
        case open
    }
}

extension Applications.Ayah.Action: ExternalApplicationAction {
    
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
