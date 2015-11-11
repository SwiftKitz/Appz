//
//  ApplicationCallerMock.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/10/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Foundation
@testable import Appz


class ApplicationCallerMock: ApplicationCaller {
    
    var canOpenURLs = true
    
    var queriedURLs = [NSURL]()
    var openedURLs = [NSURL]()
    
    func openURL(url: NSURL) -> Bool {
        openedURLs.append(url)
        return true
    }
    
    func canOpenURL(url: NSURL) -> Bool {
        queriedURLs.append(url)
        return canOpenURLs
    }
    
    func clear() {
        queriedURLs.removeAll()
        openedURLs.removeAll()
    }
}
