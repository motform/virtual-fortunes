import XCTest
@testable import virtual_fortunes

final class virtual_fortunesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(virtual_fortunes().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
