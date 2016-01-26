//
//  Twitter.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
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
    
        case Status(id: String)
        case UserHandle(String)
        case UserId(String)
        case List(handle: String, slug: String)
        case Post(message: String, repliedStatusId: String?)
        case Search(query: String)
        case Timeline
        case Mentions
        case Messages
    }
}

extension Applications.Twitter.Action: ExternalApplicationAction {

    public var paths: ActionPaths {

        switch self {
        case .Status(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["status"],
                    queryParameters: ["id": id]),
                web: Path(
                    pathComponents: ["statuses", id],
                    queryParameters: [:]
                )
            )
            
        case .UserHandle(let handle):
            return ActionPaths(
                app: Path(
                    pathComponents: ["user"],
                    queryParameters: ["screen_name": handle]
                ),
                web: Path(
                    pathComponents: [handle],
                    queryParameters: [:]
                )
            )
            
        case .UserId(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["user"],
                    queryParameters: ["id": id]
                ),
                web: Path(
                    pathComponents: ["intent", "user"],
                    queryParameters: ["user_id": id]
                )
            )
            
        case .Post(let message, let statusId):
            return ActionPaths(
                app: Path(
                    pathComponents: ["post"],
                    queryParameters: [
                        "message": message,
                        "in_reply_to_status_id": statusId ?? "",
                    ]
                ),
                web: Path(
                    pathComponents: ["intent", "tweet"],
                    queryParameters: [
                        "text": message,
                        "in_reply_to": statusId ?? "",
                    ]
                )
            )
            
        case .List(let handle, let slug):
            return ActionPaths(
                app: Path(
                    pathComponents: ["list"],
                    queryParameters: [
                        "screen_name": handle,
                        "slug": slug,
                    ]
                ),
                web: Path(
                    pathComponents: [handle, "lists", slug],
                    queryParameters: [:]
                )
            )
            
        case .Search(let query):
            return ActionPaths(
                app: Path(
                    pathComponents: ["search"],
                    queryParameters: ["query": query]
                ),
                web: Path(
                    pathComponents: ["search"],
                    queryParameters: ["q": query]
                )
            )
            
        case .Timeline:
            return ActionPaths(
                app: Path(
                    pathComponents: ["timeline"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: [],
                    queryParameters: [:]
                )
            )
            
        case .Mentions:
            return ActionPaths(
                app: Path(
                    pathComponents: ["mentions"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["mentions"],
                    queryParameters: [:]
                )
            )
            
        case .Messages:
            return ActionPaths(
                app: Path(
                    pathComponents: ["messages"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["messages"],
                    queryParameters: [:]
                )
            )
        }
    }
}

