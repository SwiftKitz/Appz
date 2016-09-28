//
//  Twitter.swift
//  Appz
//
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {

    public struct Twitter: ExternalApplication {

        public typealias ActionType = Applications.Twitter.Action

        public let scheme = "twitter:"
        public let fallbackURL = "https://twitter.com/"
        public let appStoreId = "333903271"

        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Twitter {

    public enum Action {
        
            case status(id: String)
        
    }
}

extension Applications.Twitter.Action: ExternalApplicationAction {

    public var paths: ActionPaths {

        switch self {
          
            case .status(let id):
							return ActionPaths(
								app: Path(
									pathComponents:["status"],
									queryParameters: ["id" : id]),
								web: Path(
									pathComponents:["statuses",id],
									queryParameters: [:]
								)
							)
          
        }
    }
}