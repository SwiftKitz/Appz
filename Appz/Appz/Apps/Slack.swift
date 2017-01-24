//
//  Slack.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/22/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Slack: ExternalApplication {
        
        public typealias ActionType = Applications.Slack.Action
        
        public let scheme = "slack:"
        public let fallbackURL = "https://slack.com"
        public let appStoreId = "803453959"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Slack {
    
    public enum Action {
        case open
        case channel(team: String, id: String)
        case directMessage(team: String, id: String)
        case openFile(team: String, fileID: String)
        case search(team: String, query: String)
    }
}

extension Applications.Slack.Action: ExternalApplicationAction {
    
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
            
        case .channel(let team, let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["channel"],
                    queryParameters: [
                        "team": team,
                        "id": id
                    ]
                ),
                web: Path()
            )
            
        case .directMessage(let team, let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["user"],
                    queryParameters: [
                        "team": team,
                        "id": id
                    ]
                ),
                web: Path()
            )
            
        case .openFile(let team, let fileID):
            return ActionPaths(
                app: Path(
                    pathComponents: ["file"],
                    queryParameters: [
                        "team": team,
                        "id": fileID
                    ]
                ),
                web: Path()
            )
            
        case .search(let team, let query):
            return ActionPaths(
                app: Path(
                    pathComponents: ["search"],
                    queryParameters: [
                        "team": team,
                        "query": query
                    ]
                ),
                web: Path()
            )
        }
    }
}

