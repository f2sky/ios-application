//
// Raivo OTP
//
// Copyright (c) 2019 Tijme Gommers. All rights reserved. Raivo OTP
// is provided 'as-is', without any express or implied warranty.
//
// Modification, duplication or distribution of this software (in
// source and binary forms) for any purpose is strictly prohibited.
//
// https://github.com/tijme/raivo/blob/master/LICENSE.md
//

import XCTest
import SwiftMonkey

class SetupTestMonkey: XCTestCase {
    
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launchArguments = ["--ResetState", "--MonkeyPaws"]
        app.launch()
    }

    override func tearDown() {
        // No actions required
    }
    
    func testWelcomeByMonkey() {
        let monkey = Monkey(frame: app.frame)

        monkey.addDefaultUIAutomationActions()
        monkey.addXCTestTapAlertAction(interval: 100, application: app)
        monkey.monkeyAround(forDuration: TimeInterval(60 * 2))
    }
    
}