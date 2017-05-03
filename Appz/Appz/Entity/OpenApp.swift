//
//  OpenApp.swift
//  Appz
//
//  Created by Mariam AlJamea on 9/22/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public enum TheNeededApp: String {
    
    case NYTimes, skitch
    
    var theScheme: String {
        switch self {
        case .NYTimes:
            return "nytimes:"
        case .skitch:
            return "skitch:"
        }
    }
    
    var theFallbackURL: String {
        switch self {
        case .NYTimes:
            return "https://ride.jp/"
        case .skitch:
            return "https://evernote.com/skitch/"
        }
    }
    
    var theAppStoreId: String {
        switch self {
        case .NYTimes:
            return "284862083"
        case .skitch:
            return "1088140538"
        }
    }
    
}

public extension Applications {
    
    public struct OpenApp: ExternalApplication {
        
        var theApp = TheNeededApp(rawValue: "NYTimes"
        )
         
        public typealias ActionType = Applications.OpenApp.Action
        
        public var scheme = ""
        public var fallbackURL = ""
        public var appStoreId = ""
        
        public init() {}
        
        public init(theApp: TheNeededApp) {
            self.theApp = theApp
            setValues()
        }
        
        mutating func setValues() {
            scheme = (theApp?.theScheme)!
            fallbackURL = (theApp?.theFallbackURL)!
            appStoreId = (theApp?.theAppStoreId)!
        }
    }
}

// MARK: - Actions

public extension Applications.OpenApp {
    
    public enum Action {
        case open
    }
}

extension Applications.OpenApp.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .open:
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
