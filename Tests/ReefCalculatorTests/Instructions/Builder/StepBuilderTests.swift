import Foundation
@testable import ReefCalculator
import XCTest

class StepBuilderTests: XCTestCase {
    func testBuildBlock() {
        let ml = Int.random(in: 100 ... 200)
        let minute = Int.random(in: 100 ... 200)

        let result = StepBuilder.buildBlock(
            AddWater(ml: ml),
            Wait(minute: minute)
        )

        XCTAssertEqual(2, result.count)
        XCTAssertEqual("\(ml)ml of water", result[0])
        XCTAssertEqual("Wait \(minute) minute", result[1])
    }
}
