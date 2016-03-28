//
//  ExternalApplication.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

/** Protocol for grouping the external application functionality.
    For now, it's as simple as calling openURL
 */
public protocol ExternalApplication {
    
    #if swift(>=2.2)
    associatedtype ActionType: ExternalApplicationAction
    #else
    typealias ActionType: ExternalApplicationAction
    #endif
    
    var scheme: String { get }
    var fallbackURL: String { get }
    var appStoreId: String { get }
}

public struct ActionPaths {
    
    public var app = Path()
    public var web = Path()
    
    public init() {}
    
    public init(app: Path, web: Path) {
        
        self.app = app
        self.web = web
    }
}

public protocol ExternalApplicationAction {
    var paths: ActionPaths { get }
}
