import Foundation
@testable import ReefCalculator
import XCTest

class InstructionsTests: XCTestCase {
    func testInstructions() {
        let ml = Int.random(in: 1 ... 10)
        let minute = Int.random(in: 11 ... 20)

        let instructions = Instructions {
            AddWater(ml: ml)
            Wait(minute: minute)
        }

        XCTAssertEqual(2, instructions.steps.count)
        XCTAssertEqual("\(ml)ml of water", instructions.steps[0])
        XCTAssertEqual("Wait \(minute) minute", instructions.steps[1])
    }
}
