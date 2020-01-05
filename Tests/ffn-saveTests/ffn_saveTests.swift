import XCTest
@testable import ffn_save

final class ffn_saveTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ffn_save().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
