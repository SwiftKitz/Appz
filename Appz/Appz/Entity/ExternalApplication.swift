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

public struct ActionPaths {
    
    var app = Path()
    var web = Path()
}

public protocol ExternalApplicationAction {
    var paths: ActionPaths { get }
}
