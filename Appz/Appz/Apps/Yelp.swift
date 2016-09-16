//
//  Yelp.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/29/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Yelp: ExternalApplication {
        
        public typealias ActionType = Applications.Yelp.Action
        
        public let scheme = "yelp4:"
        public let fallbackURL = "https://m.yelp.com/"
        public let appStoreId = "284910350"
        
        public init() {}
    }
}

// MARK: - Actions
// Taken from: https://www.yelp.com/developers/documentation/v2/iphone

public extension Applications.Yelp {
    
    public enum Action {
        case open
        case search(query: String)
        case searchLocation(query: String, loc: String)
        case searchCategory(cat: String)
        case searchCatLoc(loc: String, cat: String)
        case business(id: String)
    }
}

extension Applications.Yelp.Action: ExternalApplicationAction {
    
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
                    pathComponents: ["", "search"],
                    queryParameters: ["terms": query]
                ),
                web: Path(
                    pathComponents: ["search"],
                    queryParameters: ["terms": query]
                )
            )
            
        case .searchLocation(let query, let loc):
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "search"],
                    queryParameters: [
                        "terms": query,
                        "location": loc,
                    ]
                ),
                web: Path(
                    pathComponents: ["search"],
                    queryParameters: [
                        "terms": query,
                        "location": loc,
                    ]
                )
            )
            
        case .searchCategory(let cat):
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "search"],
                    queryParameters: ["category": cat]
                ),
                web: Path(
                    pathComponents: ["search"],
                    queryParameters: ["category": cat]
                )
            )
            
        case .searchCatLoc(let loc, let cat):
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "search"],
                    queryParameters: [
                        "category": cat,
                        "location": loc,
                    ]
                ),
                web: Path(
                    pathComponents: ["search"],
                    queryParameters: [
                        "category": cat,
                        "location": loc,
                    ]
                )
            )
            
        case .business(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["", "biz", id],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["biz", id],
                    queryParameters: [:]
                )
            )
        }
    }
}
