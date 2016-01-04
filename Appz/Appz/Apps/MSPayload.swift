//
//  MSPayload.swift
//  Pods
//
//  Created by Mazyad Alabduljaleel on 1/4/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public struct MSPayload {
    
    public var url: String
    
    public init(url: String = "") {
        
        self.url = url
    }
    
    public func buildURL() -> String {
        
        let sections = [("u", url)]
        
        // convert tuples to "|x|string", then join them
        return sections.map { "|\($0.0)|\($0.1)" }.joinWithSeparator("")
    }
}
