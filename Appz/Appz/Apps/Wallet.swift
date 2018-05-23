//
//  Wallet.swift
//  Appz
//
//  Created by MARYAM ALJAME on 5/23/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Wallet: ExternalApplication {
        
        public typealias ActionType = Applications.Wallet.Action
        
        public let scheme = "shoebox:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Wallet {
    
    public enum Action {
        case open
    }
}


extension Applications.Wallet.Action: ExternalApplicationAction {
    
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

