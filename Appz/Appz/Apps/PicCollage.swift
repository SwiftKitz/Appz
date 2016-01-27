//
//  PicCollage.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct PicCollage: ExternalApplication {
        
        public typealias ActionType = Applications.PicCollage.Action
        
        public let scheme = "mixiapp-piccollage:"
        public let fallbackURL = "http://pic-collage.com"
        public let appStoreId = "448639966"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.PicCollage {
    
    public enum Action {
        case Open
    }
}

extension Applications.PicCollage.Action: ExternalApplicationAction {
    
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
