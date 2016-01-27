//
//  SubwayKorea.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/19/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct SubwayKorea: ExternalApplication {
        
        public typealias ActionType = Applications.SubwayKorea.Action
        
        public let scheme = "subwaykorea:"
        public let fallbackURL = "http://blog.malangstudio.com"
        public let appStoreId = "325924444"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.SubwayKorea {
    
    public enum Action {
        case Open
    }
}

extension Applications.SubwayKorea.Action: ExternalApplicationAction {
    
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
