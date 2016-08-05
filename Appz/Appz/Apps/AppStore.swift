//
//  AppStore.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AppStore: ExternalApplication {
        
        public typealias ActionType = Applications.AppStore.Action

        public let scheme = "itms-apps:"
        public let fallbackURL = "http:"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AppStore {

    public enum Action {
    
        case account(id: String)
        case app(id: String)
        case rateApp(id: String)
    }
}


extension Applications.AppStore.Action: ExternalApplicationAction {

    public var paths: ActionPaths {
        
        switch self {
        case .account(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["itunes.apple.com", "developer", "id\(id)"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .app(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["itunes.apple.com", "app","id\(id)"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .rateApp(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["itunes.apple.com", "WebObjects", "MZStore.woa", "wa", "viewContentsUserReviews"],
                    queryParameters: [
                        "type":"Purple+Software",
                        "id":id,
                    ]
                ),
                web: Path()
            )
        }
    }
}

