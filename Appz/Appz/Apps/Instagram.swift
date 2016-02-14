//
//  Instagram.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/6/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Instagram: ExternalApplication {
        
        public typealias ActionType = Applications.Instagram.Action

        public let scheme = "instagram:"
        public let fallbackURL = "https://instagram.com/"
        public let appStoreId = "389801252"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Instagram {
    
    public enum Action {
        case Open
        case Camera
        case Media(id: String)
        case Username(username: String)
        case Location(id: String)
        case Tag(name: String)
        
    }
}

extension Applications.Instagram.Action: ExternalApplicationAction {
    
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
            
        case .Camera:
            return ActionPaths(
                app: Path(
                    pathComponents: ["camera"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .Media(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["media"],
                    queryParameters: ["id": id]
                ),
                web: Path(
                    pathComponents: ["p", id],
                    queryParameters: [:]
                )
            )
            
        case .Username(let username):
            return ActionPaths(
                app: Path(
                    pathComponents: ["user"],
                    queryParameters: ["id": username]
                ),
                web: Path(
                    pathComponents: [username],
                    queryParameters: [:]
                )
            )
            
        case .Location(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["location"],
                    queryParameters: ["id": id]
                ),
                web: Path()
            )
            
        case .Tag(let tag):
            return ActionPaths(
                app: Path(
                    pathComponents: ["tag"],
                    queryParameters: ["name": tag]
                ),
                web: Path(
                    pathComponents: ["explore", "tags", tag],
                    queryParameters: [:]
                )
            )
        }
    }
}

