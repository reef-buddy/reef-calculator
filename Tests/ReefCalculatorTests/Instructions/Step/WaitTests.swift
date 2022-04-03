import Foundation
@testable import ReefCalculator
import XCTest

class WaitTests: XCTestCase {
    func testDescription() {
        let minute = Int.random(in: 1 ... 10)
        XCTAssertEqual("Wait \(minute) minute", Wait(minute: minute).description)
    }
}
