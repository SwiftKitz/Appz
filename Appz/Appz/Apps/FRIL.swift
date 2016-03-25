//
//  FRIL.swift
//  Appz
//
//  Created by Tomonobu Sato on 3/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {

    public struct FRIL: ExternalApplication {

        public typealias ActionType = Applications.FRIL.Action

        public let scheme = "fril:"
        public let fallbackURL = "https://fril.jp/"
        public let appStoreId = "523497998"

        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FRIL {

    public enum Action {
        case Open
    }
}

extension Applications.FRIL.Action: ExternalApplicationAction {

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

