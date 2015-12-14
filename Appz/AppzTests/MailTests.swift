//
//  MailTests.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/5/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MailTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let mail = Applications.Mail()
        XCTAssertEqual(mail.scheme, "mailto:")
        XCTAssertEqual(mail.fallbackURL, "")
    }
    
    func testEmail() {
        
        let email = Email(
            recipient: "test@example.com",
            subject: "subject",
            body: "body"
        )
        
        let action = Applications.Mail.Action.Compose(email: email)
        
        XCTAssertEqual(action.paths.app.pathComponents, [email.recipient])
        XCTAssertEqual(action.paths.app.queryParameters, ["subject": email.subject, "body": email.body])
        
    }    
}
