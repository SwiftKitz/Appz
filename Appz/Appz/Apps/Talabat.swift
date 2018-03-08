//
//  Talabat.swift
//  Appz
//
//  Created by MARYAM ALJAME on 3/6/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Talabat: ExternalApplication {
        
        public typealias ActionType = Applications.Talabat.Action
        
        public let scheme = "talabat:"
        public let fallbackURL = "https://www.talabat.com"
        public let appStoreId = "451001072"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Talabat {
    
    public enum Action {
        case open
    }
}


extension Applications.Talabat.Action: ExternalApplicationAction {
    
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

