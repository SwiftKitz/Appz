//
//  ApplicationCaller.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/10/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


/** Encapsulate the object which launches the apps. Useful for 
    UIApplication, NSExtensionContext, and testing.
*/
public protocol ApplicationCaller {
    
    func canOpenURL(url: NSURL) -> Bool
    func openURL(url: NSURL) -> Bool
}

public extension ApplicationCaller {
    
    public var open: AvailableApplications {
        return AvailableApplications(appCaller: self)
    }
    
    func launch(externalApp: ExternalApplication, action: ExternalApplicationAction) -> Bool {
        
        let fallbackPath = action.fallbackPath ?? action.path
        
        let scheme = (externalApp.scheme ?? "") + "//"
        let baseURL = NSURL(string: scheme)
        
        if let url = baseURL where canOpenURL(url),
            let fullURL = NSURL(string: scheme + action.path)
        {
            return openURL(fullURL)
        }
        
        if let fallbackURL = externalApp.fallbackURL,
            let url = NSURL(string: fallbackURL + fallbackPath)
        {
            return openURL(url)
        }
        
        return false
    }
}
