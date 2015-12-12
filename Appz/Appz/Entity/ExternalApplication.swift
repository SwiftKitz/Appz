//
//  ExternalApplication.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


/** Protocol for grouping the external application functionality.
    For now, it's as simple as calling openURL
 */
public protocol ExternalApplication {
    
    var scheme: String { get }
    var fallbackURL: String? { get }
}

public protocol ExternalApplicationAction {
    
    var path: String { get }
    var fallbackPath: String? { get }
}

public extension ExternalApplicationAction {
        
    var path: String {
        return ""
    }
    
    var fallbackPath: String? {
        return nil
    }
    
    func escape(string: String) -> String {
        return string.stringByAddingPercentEncodingWithAllowedCharacters(
            NSCharacterSet.URLQueryAllowedCharacterSet()
        ) ?? ""
    }
}
