import ReefCalculator
import XCTest

final class ReefCalculatorTests: XCTestCase {
    func testCalculateRedFieldRatioGreen() {
        let (result, redField) = ReefCalculator(.colombo)
            .calculateRedFieldRatio(nitrate: 10, phosphate: 0.2)
        XCTAssertEqual(76, result)
        XCTAssertEqual(.green, redField)
    }

    func testCalculateRedFieldRatioLittle() {
        let (result, redField) = ReefCalculator(.colombo)
            .calculateRedFieldRatio(nitrate: 10, phosphate: 0.7)
        XCTAssertEqual(21, result)
        XCTAssertEqual(.little, redField)
    }

    func testCalculateRedFieldRatioBlueGreen() {
        let (result, redField) = ReefCalculator(.colombo)
            .calculateRedFieldRatio(nitrate: 10, phosphate: 2)
        XCTAssertEqual(7, result)
        XCTAssertEqual(.blueGreen, redField)
    }
}
