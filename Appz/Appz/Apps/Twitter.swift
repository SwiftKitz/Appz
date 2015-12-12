//
//  Twitter.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public extension Applications {
    
    public struct Twitter: ExternalApplication {
        
        public let scheme = "twitter:"
        public let fallbackURL: String? = "https://twitter.com/"
    }
    
    public func twitter(action: Twitter.Action) -> Bool {
        return appCaller.launch(Twitter(), action: action)
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

    public var path: String {
        
        switch self {
        case .Status(let id):
            return "status?id=\(id)"
            
        case .UserHandle(let handle):
            return "user?screen_name=\(handle)"
            
        case .UserId(let id):
            return "user?id=\(id)"
            
        case .Post(let message, let statusId):
            
            var path = "post?message=\(escape(message))"
            if let statusId = statusId {
                path += "&in_reply_to_status_id=\(statusId)"
            }
            return path
            
        case .List(let handle, let slug):
            return "list?screen_name=\(handle)&slug=\(escape(slug))"
            
        case .Search(let query):
            return "search?query=\(escape(query))"
            
        case .Timeline:
            return "timeline"
            
        case .Mentions:
            return "mentions"
            
        case .Messages:
            return "messages"
        }
    }
    
    public var fallbackPath: String? {
        
        switch self {
        case .Status(let id):
            return "statuses/\(id)"
            
        case .UserHandle(let handle):
            return handle
            
        case .UserId(let id):
            return "intent/user?user_id=\(id)"
            
        case .Post(let message, let statusId):
            
            var path = "intent/tweet?text=\(escape(message))"
            if let statusId = statusId {
                path += "&in_reply_to=\(statusId)"
            }
            return path
            
        case .List(let handle, let slug):
            return "\(handle)/lists/\(slug)"
            
        case .Search(let query):
            return "search?q=\(escape(query))"
            
        case .Timeline:
            return "" // Just open twitter
            
        case .Mentions:
            return "mentions"
            
        case .Messages:
            return "messages"
        }
    }
}

