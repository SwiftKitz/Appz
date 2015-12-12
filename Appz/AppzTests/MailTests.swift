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
        
        let email = "test@example.com"
        let subject = "subject"
        let body = "body"
        let action = Applications.Mail.Action.Compose(email: Email(to: email, subject: subject, body: body))
        
        
        XCTAssertEqual(action.path, "\(email)?subject=\(subject)&body=\(body)")
        
    }
    
    func testEmptyEmail() {
        
        let email = "test@example.com"
        let action = Applications.Mail.Action.Compose(email: Email(to: email))
        
        
        XCTAssertEqual(action.path, "\(email)?subject=&body=")
        
    }
    
    func testSubject() {
        
        let subject = "test"
        let action = Applications.Mail.Action.Compose(email: Email(subject: subject))
        
        XCTAssertEqual(action.path, "?subject=\(subject)&body=")
    }
}
