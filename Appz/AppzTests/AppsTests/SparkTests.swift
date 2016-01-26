//
//  SparkTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SparkTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let spark = Applications.Spark()
        XCTAssertEqual(spark.scheme, "readdle-spark:")
        XCTAssertEqual(spark.fallbackURL, "https://readdle.com/products/spark")
    }
    
    func testOpen() {
        
        let subject = "Hi"
        let recipient = "mrm259@gmail.com"
        let action = Applications.Spark.Action.Compose(subject: subject, recipient:recipient)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["compose"])
        XCTAssertEqual(action.paths.app.queryParameters, [
                                                            "subject": subject,
                                                            "recipient": recipient,
                                                          ])
        XCTAssertEqual(action.paths.web, Path())
    }
}
