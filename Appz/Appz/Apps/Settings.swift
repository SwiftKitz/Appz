//
//  Settings.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit

#if !os(watchOS)

public extension Applications {
    
    struct AppSettings: ExternalApplication {
        
        public typealias ActionType = Applications.AppSettings.Action

        public let scheme = UIApplication.openSettingsURLString
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AppSettings {

    enum Action {
        case open
    }
}

extension Applications.AppSettings.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .open:
            return ActionPaths()
        }
    }
}

#endif
