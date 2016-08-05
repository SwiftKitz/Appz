//
//  IMDb.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/27/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct IMDb: ExternalApplication {
        
        public typealias ActionType = Applications.IMDb.Action
        
        public let scheme = "imdb:"
        public let fallbackURL = "http://www.imdb.com/"
        public let appStoreId = "342792525"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.IMDb {
    
    public enum Action {
        
        case open
        case search(query: String)
        case title(id: String)
        case boxoffice
        case showtimes
        case featureCS
        case featureBP
        case featureBT
        case chartTop
        case moviemeter
    }
}


extension Applications.IMDb.Action: ExternalApplicationAction {
    
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
            
        case .search(let query):
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "find"],
                    queryParameters: ["q": query]
                ),
                web: Path(
                    pathComponents: ["find"],
                    queryParameters: ["q": query]
                )
            )
            
        case .title(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "title", id],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["title", id],
                    queryParameters: [:]
                )
            )
            
        case .boxoffice:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "boxoffice"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["boxoffice"],
                    queryParameters: [:])
            )
            
        case .showtimes:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "showtimes"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["showtimes"],
                    queryParameters: [:]
                )
            )
            
        case .featureCS:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "feature", "comingsoon"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["feature", "comingsoon"],
                    queryParameters: [:]
                )
            )
            
        case .featureBP:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "feature", "bestpicture"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["feature", "bestpicture"],
                    queryParameters: [:]
                )
            )
            
        case .featureBT:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "feature", "borntoday"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["feature", "borntoday"],
                    queryParameters: [:]
                )
            )
            
        case .chartTop:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "chart", "top"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["chart", "top"],
                    queryParameters: [:]
                )
            )
            
        case .moviemeter:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "chart", "moviemeter"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["chart", "moviemeter"],
                    queryParameters: [:]
                )
            )
        }
    }
}
