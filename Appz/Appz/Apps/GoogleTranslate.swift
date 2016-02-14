//
//  GoogleTranslate.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleTranslate: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleTranslate.Action
        
        public let scheme = "googletranslate:"
        public let fallbackURL = "https://translate.google.com/about/intl/en_ALL/index.html"
        public let appStoreId = "414706506"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleTranslate {
    
    public enum Action {
        case Open
    }
}

extension Applications.GoogleTranslate.Action: ExternalApplicationAction {
    
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

