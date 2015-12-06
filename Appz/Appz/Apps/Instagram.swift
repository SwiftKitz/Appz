//
//  Instagram.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/6/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public extension AvailableApplications {
    
    public struct Instagram: ExternalApplication {
        
        public let scheme = "instagram:"
        public let fallbackURL: String? = "https://instagram.com/"
    }
    
    public func instagram(action: Instagram.Action) -> Bool {
        return appCaller.launch(Instagram(), action: action)
    }
}

// MARK: - Actions

public extension AvailableApplications.Instagram {
    
    public enum Action {
        case Open
        case Camera
        case Media(id: String)
        case Username(username: String)
        case Location(id: String)
        case Tag(name: String)
        
    }
}

extension AvailableApplications.Instagram.Action: ExternalApplicationAction {
    
    public var path: String {
        
        switch self {
        case .Open:
            return "app"
            
        case .Camera:
            return "camera"
            
        case .Media(let id):
            return "media?id=\(id)"
            
        case .Username(let username):
            return "user?id=\(username)"
            
        case .Location(let id):
            return "location?id=\(id)"
            
        case .Tag(let tag):
            return "tag?name=\(tag)"
        }
    }
    
    public var fallbackPath: String? {
        
        switch self {
        case .Open:
            return ""
            
        case .Camera:
            return nil
            
        case .Media(let id):
            return "p/-\(id)/"
            
        case .Username(let username):
            return "\(username)"
            
        case .Location( _):
            return nil
            
        case .Tag(let tag):
            return "explore/tags/\(tag)/"
        }
    }
}

