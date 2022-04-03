import Foundation
@testable import ReefCalculator
import XCTest

class AddWaterTests: XCTestCase {
    func testDescription() {
        let ml = Int.random(in: 1 ... 10)
        XCTAssertEqual("\(ml)ml of water", AddWater(ml: ml).description)
    }
}
