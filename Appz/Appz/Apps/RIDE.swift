//
//  RIDE.swift
//  Appz
//
//  Created by Tomonobu Sato on 3/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {

    public struct RIDE: ExternalApplication {

        public typealias ActionType = Applications.RIDE.Action

        public let scheme = "rideapp:"
        public let fallbackURL = "https://ride.jp/"
        public let appStoreId = "1088140538"

        public init() {}
    }
}

// MARK: - Actions

public extension Applications.RIDE {

    public enum Action {
        case Open
    }
}

extension Applications.RIDE.Action: ExternalApplicationAction {

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
        }
    }
}
