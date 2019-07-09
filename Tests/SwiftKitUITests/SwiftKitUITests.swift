import XCTest
@testable import SwiftKitUI

final class SwiftKitUITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftKitUI().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
