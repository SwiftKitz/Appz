//
//  FaceTimeAudio.swift
//  Appz
//
//  Created by MARYAM ALJAME on 1/26/18.
//  Copyright © 2018 kitz. All rights reserved.
//

public extension Applications {
    
    public struct FaceTimeAudio: ExternalApplication {
        
        public typealias ActionType = Applications.FaceTimeAudio.Action
        
        public let scheme = "facetime-audio:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FaceTimeAudio {
    
    public enum Action {
        case call(email: String)
    }
}

extension Applications.FaceTimeAudio.Action: ExternalApplicationAction {
    
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
