//
//  PathTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 12/18/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


class PathTests: XCTestCase {
    
    let path = Path(
        pathComponents: ["a", "b"],
        queryParameters: ["1": "2", "11": "22"]
    )
    
    func testAppendToURL() {
        
        let expectedURL = NSURL(string: "https://google.com/a/b?1=2&11=22")
        XCTAssertEqual(path.appendToURL("https://google.com/"), expectedURL)
    }
    
    func testAppendToMalformedURL() {
        XCTAssertEqual(path.appendToURL("%oo%le.com"), nil)
    }
    
    func testAppendToURLWithoutHost() {
        
        let expectedURL = NSURL(string: "test://a/b?1=2&11=22")
        XCTAssertEqual(path.appendToURL("test:"), expectedURL)
    }
}
