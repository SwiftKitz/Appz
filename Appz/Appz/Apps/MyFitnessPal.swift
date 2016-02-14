//
//  MyFitnessPal.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct MyFitnessPal: ExternalApplication {
        
        public typealias ActionType = Applications.MyFitnessPal.Action
        
        public let scheme = "mfp:"
        public let fallbackURL = "https://www.myfitnesspal.com"
        public let appStoreId = "341232718"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.MyFitnessPal {
    
    public enum Action {
        case Open
    }
}

extension Applications.MyFitnessPal.Action: ExternalApplicationAction {
    
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
