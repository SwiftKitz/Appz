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
    
    public func canOpen<E: ExternalApplication>(externalApp: E) -> Bool {

        if let baseURL = NSURL(string: externalApp.scheme) {
            return canOpenURL(baseURL)
        }
        
        return false
    }
    
    public func open<E: ExternalApplication>(externalApp: E, action: E.ActionType, promptInstall: Bool = false) -> Bool {
        
        let scheme = externalApp.scheme
        let baseURL = NSURL(string: scheme)
        let paths = action.paths
        
        if let baseURL = baseURL where canOpenURL(baseURL),
            let url = paths.app.appendToURL(scheme)
        {
            return openURL(url)
        }
        
        if promptInstall && !externalApp.appStoreId.isEmpty {
            return open(Applications.AppStore(), action: .App(id: externalApp.appStoreId))
        }
        
        if let url = paths.web.appendToURL(externalApp.fallbackURL) {
            return openURL(url)
        }
        
        return false
    }
}
