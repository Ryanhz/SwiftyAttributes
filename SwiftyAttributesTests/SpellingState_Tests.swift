//
//  SpellingState_Tests.swift
//  SwiftyAttributes
//
//  Created by Eddie Kaiger on 11/26/16.
//  Copyright © 2016 Eddie Kaiger. All rights reserved.
//

#if os(macOS)
import XCTest
import SwiftyAttributes

class SpellingState_Tests: XCTestCase {
    
    func testInit_nil() {
        XCTAssertNil(SpellingState(rawValue: 6))
    }

    func testInit_flags() {
        XCTAssertEqual(SpellingState(rawValue: 2)!, .grammarFlag)
        XCTAssertEqual(SpellingState(rawValue: 1)!, .spellingFlag)
        XCTAssertEqual(SpellingState(rawValue: 0)!, .none)
    }

    func testRawValue() {
        XCTAssertEqual(SpellingState.grammarFlag.rawValue, 2)
        XCTAssertEqual(SpellingState.spellingFlag.rawValue, 1)
        XCTAssertEqual(SpellingState.none.rawValue, 0)
    }
    
}
#endif
