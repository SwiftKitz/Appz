//
//  Epson.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/19/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Epson: ExternalApplication {
        
        public typealias ActionType = Applications.Epson.Action
        
        public let scheme = "com.epson.iPrint:"
        public let fallbackURL = "https://www.epson.com/cgi-bin/Store/jsp/epson-connect/mobile-printing/iprint-app.do"
        public let appStoreId = "326876192"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Epson {
    
    public enum Action {
        case Open
    }
}

extension Applications.Epson.Action: ExternalApplicationAction {
    
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
