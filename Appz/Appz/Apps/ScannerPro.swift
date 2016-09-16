//
//  ScannerPro.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct ScannerPro: ExternalApplication {
        
        public typealias ActionType = Applications.ScannerPro.Action
        
        public let scheme = "spprint:"
        public let fallbackURL = "https://readdle.com/products/scannerpro/"
        public let appStoreId = "333710667"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.ScannerPro {
    
    public enum Action {
        case open
    }
}

extension Applications.ScannerPro.Action: ExternalApplicationAction {
    
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
