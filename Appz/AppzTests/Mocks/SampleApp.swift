//
//  SampleApp.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Appz


struct SampleApp: ExternalApplication {
    
    typealias ActionType = SampleAction
    
    let scheme = "test:"
    let fallbackURL = "http://google.com/"
    let appStoreId = "12345"
}
