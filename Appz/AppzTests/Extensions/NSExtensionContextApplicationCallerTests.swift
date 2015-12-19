//
//  NSExtensionContextApplicationCallerTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
import Appz

class NSExtensionContextApplicationCallerTests: XCTestCase {
    
    func testCanOpenURL() {
        // FIXME: radar issue, as highlited in the im
        XCTAssertFalse(NSExtensionContext().canOpen(SampleApp()))
    }
    
    func testOpenURL() {
        XCTAssertTrue(NSExtensionContext().openURL(NSURL()))
    }
}
