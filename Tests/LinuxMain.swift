import XCTest

import ColorKit_Test

var testCaseEntrySet: [XCTestCaseEntry] {
    var result = [XCTestCaseEntry]()
    result.append(contentsOf: ColorKit_Test.testCaseEntrySet)
    return result
}

XCTMain(testCaseEntrySet)
