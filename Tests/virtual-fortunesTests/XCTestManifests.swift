import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(virtual_fortunesTests.allTests),
    ]
}
#endif