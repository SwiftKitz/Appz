//
//  Twitter.swift
//  Appz
//
//  Created by Hamad AlGhanim on 12/22/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Youtube: ExternalApplication {
        
        public typealias ActionType = Applications.Youtube.Action
        
        public let scheme = "youtube:"
        public let fallbackURL = "https://youtube.com/"
        public let appStoreId = "544007664"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Youtube {
    
    public enum Action {
        case Open()
        case Video(id: String)
    }
}

extension Applications.Youtube.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open():
            return ActionPaths()
            
        case .Video(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["watch"],
                    queryParameters: ["v": id]),
                web: Path(
                    pathComponents: ["watch"],
                    queryParameters: ["v" : id]
                )
            )
        }
    }
}

