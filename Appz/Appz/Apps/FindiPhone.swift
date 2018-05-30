//
//  FindiPhone.swift
//  Appz
//
//  Created by MARYAM ALJAME on 5/30/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct FindiPhone: ExternalApplication {
        
        public typealias ActionType = Applications.FindiPhone.Action
        
        public let scheme = "fmip1:"
        public let fallbackURL = "https://itunes.apple.com/us/app/find-my-iphone/id376101648?mt=8"
        public let appStoreId = "376101648"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FindiPhone {
    
    public enum Action {
        case open
    }
}


extension Applications.FindiPhone.Action: ExternalApplicationAction {
    
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
