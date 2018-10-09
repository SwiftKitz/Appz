//
//  Views.swift
//  Pods
//
//  Created by Sai Kambampati on 10/1/18.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Views: ExternalApplication {
        
        public typealias ActionType = Applications.Views.Action
        
        public let scheme = "views:"
        public let fallbackURL = "http://www.saikambampati.com/views"
        public let appStoreId = "1322754821"
        
        public init() {}
    }
}

// MARK: - Actions
public extension Applications.Views {
    
    public enum Action {
        case open
    }
}

extension Applications.Views.Action: ExternalApplicationAction {
    
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
