//
//  Path.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 12/13/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


public struct Path {
    
    public var pathComponents = [String]()
    public var queryParameters = [String:String]()
    
    public var queryItems: [NSURLQueryItem] {
        return queryParameters
            .map { NSURLQueryItem(name: $0, value: $1) }
    }
    
    public init() {}
    
    public init(pathComponents: [String], queryParameters: [String:String]) {
        
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    /**
     This method will take the base URL and append components to it.
     
     - Parameter baseURL:  The base URL.
     
     */
    public func appendToURL(baseURL: String) -> NSURL? {
        
        guard let url = NSURL(string: baseURL) else {
            return nil
        }
        
        let urlComponents = NSURLComponents(URL: url, resolvingAgainstBaseURL: false)
        urlComponents?.queryItems = queryItems.isEmpty ? nil : queryItems
        
        var pathComponents = self.pathComponents
        
        if let firstPath = pathComponents.first where urlComponents?.host == nil {
            urlComponents?.host = firstPath
            pathComponents = Array(pathComponents.dropFirst())
        }
        
        if !pathComponents.isEmpty {
            urlComponents?.path = "/" + pathComponents.joinWithSeparator("/")
        }
        
        return urlComponents?.URL
    }
}


extension Path: Equatable {}

public func ==(lhs: Path, rhs: Path) -> Bool {
    return (
        lhs.pathComponents == rhs.pathComponents
        && lhs.queryParameters == rhs.queryParameters
    )
}
