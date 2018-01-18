//
//  FaceTime.swift
//  Appz
//
//  Created by MARYAM ALJAME on 1/18/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct FaceTime: ExternalApplication {
        
        public typealias ActionType = Applications.FaceTime.Action
        
        public let scheme = "facetime:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FaceTime {
    
    public enum Action {
        case call(email: String)
    }
}

extension Applications.FaceTime.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .call(let email):
            return ActionPaths(
                app: Path(
                    pathComponents: [email],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}

