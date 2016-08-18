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
    var exceptionURLs = [URL]()
    
    var queriedURLs = [URL]()
    var openedURLs = [URL]()
    
    func openURL(_ url: URL) -> Bool {
        openedURLs.append(url)
        return true
    }
    
    func canOpenURL(_ url: URL) -> Bool {
        queriedURLs.append(url)
        return canOpenURLs || exceptionURLs.contains(url)
    }
    
    func clear() {
        queriedURLs.removeAll()
        openedURLs.removeAll()
    }
}
