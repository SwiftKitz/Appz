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
        
        let resultURL = path.appendToURL("https://google.com/")!
        // can't assert the final URL, due to query string ordering issues
        XCTAssert(resultURL.absoluteString.starts(with: "https://google.com/a/b?"))
        XCTAssert(resultURL.absoluteString.contains("1=2"))
        XCTAssert(resultURL.absoluteString.contains("11=22"))
    }
    
    func testAppendToMalformedURL() {
        XCTAssertEqual(path.appendToURL("%oo%le.com"), nil)
    }
    
    func testAppendToURLWithoutHost() {
        
        let resultURL = path.appendToURL("test:")!
        // can't assert the final URL, due to query string ordering issues
        XCTAssert(resultURL.absoluteString.starts(with: "test://a/b?"))
        XCTAssert(resultURL.absoluteString.contains("1=2"))
        XCTAssert(resultURL.absoluteString.contains("11=22"))
    }
}
