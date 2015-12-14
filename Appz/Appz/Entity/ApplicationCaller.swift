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
    
    public var open: Applications {
        return Applications(appCaller: self)
    }
    
    func launch(externalApp: ExternalApplication, action: ExternalApplicationAction) -> Bool {
        
        let scheme = (externalApp.scheme ?? "") + "//"
        let baseURL = NSURL(string: scheme)
        let paths = action.paths
        
        if let baseURL = baseURL where canOpenURL(baseURL),
            let url = paths.app.appendToURL(scheme)
        {
            return openURL(url)
        }
        
        if let fallbackURL = externalApp.fallbackURL,
            let url = paths.web.appendToURL(fallbackURL)
        {
            return openURL(url)
        }
        
        return false
    }
}
