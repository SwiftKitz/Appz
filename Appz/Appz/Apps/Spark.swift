//
//  Spark.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Spark: ExternalApplication {
        
        public typealias ActionType = Applications.Spark.Action
        
        public let scheme = "readdle-spark:"
        public let fallbackURL = "https://readdle.com/products/spark"
        public let appStoreId = "997102246"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Spark {
    
    public enum Action {
        case Compose(subject: String, recipient: String)
    }
}

extension Applications.Spark.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Compose(let subject, let recipient):
            return ActionPaths(
                app: Path(
                    pathComponents: ["compose"],
                    queryParameters: [
                        "subject": subject,
                        "recipient": recipient,
                    ]
                ),
                web: Path()
            )
        }
    }
}
