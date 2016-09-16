//
//  GoogleMaps.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/23/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleMaps: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleMaps.Action
        
        public let scheme = "comgooglemaps:"
        public let fallbackURL = "https://maps.google.com/"
        public let appStoreId = "585027354"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleMaps {
    
    public enum Action {
        case open
        case displayDirections(saddr: String,
                               daddr: String,
                      directionsmode: String)
        case displayLocation(center: String,
                               zoom: String,
                              views: String)
        case search(q: String)
        
    }
}

extension Applications.GoogleMaps.Action: ExternalApplicationAction {
    
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
            
        case .displayDirections(let saddr, let daddr, let directionsmode):
            return ActionPaths(
                app: Path(
                    pathComponents: [""],
                    queryParameters: [
                        "saddr": saddr,
                        "daddr": daddr,
                        "directionsmode": directionsmode,
                    ]
                ),
                web: Path(
                    pathComponents: [""],
                    queryParameters: ["saddr": saddr,
                                      "daddr": daddr,
                             "directionsmode": directionsmode,]
                )
            )
            
        case .displayLocation(let center, let zoom, let views):
            return ActionPaths(
                app: Path(
                    pathComponents: [""],
                    queryParameters: [
                        "center": center,
                        "zoom": zoom,
                        "views": views,
                    ]
                ),
                web: Path(
                    pathComponents: [""],
                    queryParameters: ["center": center,
                                        "zoom": zoom,
                                       "views": views,]
                )
            )
            
        case .search(let q):
            return ActionPaths(
                app: Path(
                    pathComponents: [""],
                    queryParameters: [
                        "q": q,
                    ]
                ),
                web: Path(
                    pathComponents: [""],
                    queryParameters: ["q": q]
                )
            )
        }
    }
}

