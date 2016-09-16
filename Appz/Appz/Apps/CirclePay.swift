//
//  CirclePay.swift
//  Appz
//
//  Created by briankracoff on 3/24/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {

    public struct CirclePay: ExternalApplication {

        public typealias ActionType = Applications.CirclePay.Action

        public let scheme = "circle:"
        public let fallbackURL = "https://www.circle.com/"
        public let appStoreId = "920164002"

        public init() {}
    }
}

// MARK: - Actions

public extension Applications.CirclePay {

    public enum Action {
        case open
        case request
        case send
    }
}

extension Applications.CirclePay.Action: ExternalApplicationAction {

    public var paths: ActionPaths {

        switch self {
        case .open:
            return ActionPaths()

        case .request:
            return ActionPaths(
                app: Path(
                    pathComponents: ["request"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["request"],
                    queryParameters: [:]
                )
            )

        case .send:
            return ActionPaths(
                app: Path(
                    pathComponents: ["send"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["send"],
                    queryParameters: [:]
                )
            )
        }
    }
}
