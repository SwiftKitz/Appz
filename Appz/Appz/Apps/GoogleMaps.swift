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
        case Open
        case DisplayDirections(saddr: String,
                               daddr: String,
                      directionsmode: String)
        case Search(q: String)
        
    }
}

extension Applications.GoogleMaps.Action: ExternalApplicationAction {
    
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
            
        case .DisplayDirections(let saddr, let daddr, let directionsmode):
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
            
        case .Search(let q):
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

