//
//  AppStore.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public extension AvailableApplications {
    
    public struct AppStore: ExternalApplication {
        
        public let scheme = "itms-apps:"
        public let fallbackURL: String? = "http:"
    }
    
    public func appStore(action: AppStore.Action) -> Bool {
        return appCaller.launch(AppStore(), action: action)
    }
}

// MARK: - Actions

public extension AvailableApplications.AppStore {

    public enum Action {
    
        case Account(id: String)
        case App(id: String)
    }
}


extension AvailableApplications.AppStore.Action: ExternalApplicationAction {

    public var path: String {
        
        switch self {
        case .Account(let id):
            return "itunes.apple.com/developer/id\(id)"
            
        case .App(let id):
            return "itunes.apple.com/apps/id\(id)"
        }
    }
}

