import XCTest
@testable import virtualFortunes

final class virtualFortunesTests: XCTestCase {
    func testOpenFile() {
        XCTAssertEqual(try openFile(path: "Fortunes/ccru-fortunes"), "test")
    }

    static var allTests = [
        ("testOpenFiles", testOpenFile),
    ]
}
