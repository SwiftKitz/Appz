//
//  AvailableApplications.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation


/** Base for aggregating the available applications.
 */
public struct AvailableApplications {
    
    public let appCaller: ApplicationCaller
    
    init(appCaller: ApplicationCaller) {
        self.appCaller = appCaller
    }
}
