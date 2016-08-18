//
//  NSExtensionContext+ApplicationCaller.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/10/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


extension NSExtensionContext: ApplicationCaller {
    
    /** Unconditionally fail to the failover code. See rdar://18107612
     */
    public func canOpenURL(_ url: URL) -> Bool {
        return false
    }
    
    public func openURL(_ url: URL) -> Bool {
        open(url, completionHandler: nil)
        return true // maybe use a semaphore instead
    }
}
