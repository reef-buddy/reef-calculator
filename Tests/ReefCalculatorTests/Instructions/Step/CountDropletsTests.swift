import Foundation
@testable import ReefCalculator
import XCTest

class CountDropletsTests: XCTestCase {
    func testDescription() {
        let reagent = Int.random(in: 1 ... 10)

        XCTAssertEqual("Count droplets of reagent \(reagent), stop when water blue come blue",
                       CountDroplets(reagent: reagent, initialColor: .blue, stopColor: .blue).description)

        XCTAssertEqual("Count droplets of reagent, stop when water blue come blue",
                       CountDroplets(initialColor: .blue, stopColor: .blue).description)
    }
}
