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
    
    func canOpenURL(_ url: URL) -> Bool
    func openURL(_ url: URL) -> Bool
}

public extension ApplicationCaller {
    
    public func canOpen<E: ExternalApplication>(_ externalApp: E) -> Bool {

        if let baseURL = URL(string: externalApp.scheme) {
            
            return canOpenURL(baseURL)
        }
        
        return false
    }
    
    @discardableResult public func open<E: ExternalApplication>(_ externalApp: E, action: E.ActionType, promptInstall: Bool = false) -> Bool {
        
        let scheme = externalApp.scheme
        let baseURL = URL(string: scheme)
        let paths = action.paths
        
        if let baseURL = baseURL, canOpenURL(baseURL),
            let url = paths.app.appendToURL(scheme)
        {
            return openURL(url)
        }
        
        if promptInstall && !externalApp.appStoreId.isEmpty {
            return open(Applications.AppStore(), action: .app(id: externalApp.appStoreId))
        }
        
        if let url = paths.web.appendToURL(externalApp.fallbackURL) {
            return openURL(url)
        }
        
        return false
    }
}
