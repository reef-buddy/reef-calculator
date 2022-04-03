import Foundation
@testable import ReefCalculator
import XCTest

class AddReagentTests: XCTestCase {
    func testDescription() {
        let reagent = Int.random(in: 1 ... 10)
        let droplets = Int.random(in: 11 ... 20)
        XCTAssertEqual(
            "\(droplets) droplets of reagent \(reagent)",
            AddReagent(reagentNumber: reagent, droplets: droplets).description
        )
    }
}
