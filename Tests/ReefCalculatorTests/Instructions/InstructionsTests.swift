import Foundation
@testable import ReefCalculator
import XCTest

class InstructionsTests: XCTestCase {
    func testInstructions() {
        let ml = Int.random(in: 100 ... 1000)
        let minute = Int.random(in: 1100 ... 2000)

        let instructions = Instructions {
            AddWater(ml: ml)
            Wait(minute: minute)
        }

        XCTAssertEqual(2, instructions.steps.count)
        XCTAssertEqual("\(ml)ml of water", instructions.steps[0])
        XCTAssertEqual("Wait \(minute) minute", instructions.steps[1])
    }
}
