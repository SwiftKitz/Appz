//
//  Settings.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit


public extension Applications {
    
    public struct AppSettings: ExternalApplication {
        
        public let scheme = UIApplicationOpenSettingsURLString
        public let fallbackURL: String? = nil
    }
    
    func appSettings(action: AppSettings.Action) -> Bool {
        return appCaller.launch(AppSettings(), action: action)
    }
}

// MARK: - Actions

public extension Applications.AppSettings {

    public enum Action {
        case Open
    }
}

extension Applications.AppSettings.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths()
        }
    }
}
