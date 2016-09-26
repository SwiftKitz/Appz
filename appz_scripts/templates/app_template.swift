//
//  {{ app.name }}.swift
//  Appz
//
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {

    public struct {{ app.name }}: ExternalApplication {

        public typealias ActionType = Applications.{{ app.name }}.Action

        public let scheme = "{{ app.scheme }}"
        public let fallbackURL = "{{ app.fallbackURL }}"
        public let appStoreId = "{{ app.appStoreId }}"

        public init() {}
    }
}

// MARK: - Actions

public extension Applications.{{ app.name }} {

    public enum Action {
        {% for action in app.actions %}
          case status(id: String)
          case userHandle(String)
          case userId(String)
          case list(handle: String, slug: String)
          case post(message: String, repliedStatusId: String?)
          case search(query: String)
          case timeline
          case mentions
          case messages
        {% endfor %}
    }
}

extension Applications.{{ app.name }}.Action: ExternalApplicationAction {

    public var paths: ActionPaths {

        switch self {
        case .status(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["status"],
                    queryParameters: ["id": id]),
                web: Path(
                    pathComponents: ["statuses", id],
                    queryParameters: [:]
                )
            )

        case .userHandle(let handle):
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

        case .userId(let id):
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

        case .post(let message, let statusId):
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

        case .list(let handle, let slug):
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

        case .search(let query):
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

        case .timeline:
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

        case .mentions:
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

        case .messages:
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
