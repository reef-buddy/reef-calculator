import Foundation
@testable import ReefCalculator
import XCTest

class SpoonTests: XCTestCase {
    func testDescription() {
        let reagent = Int.random(in: 1 ... 10)

        XCTAssertEqual("1 small spoon of reagent \(reagent)",
                       Spoon(reagent: reagent, size: .small).description)

        XCTAssertEqual("1 large spoon of reagent \(reagent)",
                       Spoon(reagent: reagent, size: .large).description)
    }
}
