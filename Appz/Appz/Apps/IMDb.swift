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
        
        case Open
        case Search(query: String)
        case Title(id: String)
        case Boxoffice
        case Showtimes
        case FeatureCS
        case FeatureBP
        case FeatureBT
        case ChartTop
        case Moviemeter
    }
}


extension Applications.IMDb.Action: ExternalApplicationAction {
    
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
            
        case .Search(let query):
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
            
        case .Title(let id):
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
            
        case .Boxoffice:
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "boxoffice"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["boxoffice"],
                    queryParameters: [:])
            )
            
        case .Showtimes:
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
            
        case .FeatureCS:
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
            
        case .FeatureBP:
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
            
        case .FeatureBT:
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
            
        case .ChartTop:
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
            
        case .Moviemeter:
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
