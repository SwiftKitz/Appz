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
            {{ action.create_function_definition() }}
        {% endfor %}
    }
}

extension Applications.{{ app.name }}.Action: ExternalApplicationAction {

    public var paths: ActionPaths {

        switch self {
          {% for action in app.actions %}
            {{ action.create_action() }}
          {% endfor %}
        }
    }
}
