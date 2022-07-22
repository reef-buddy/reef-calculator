import Foundation
import ReefCalculator
import XCTest

class SalifertTests: XCTestCase {
    let brand = Salifert()

    let availableTest: [MetricType] = []

    lazy var notAvailableTest: [MetricType] = MetricType.allCases.filter { metric in
        !availableTest.contains(where: { available in
            available.rawValue == metric.rawValue
        })
    }

    func testName() {
        XCTAssertEqual("Salifert", brand.name)
    }

    func testCalculateAvailable() {
        for metricType in availableTest {
            XCTAssertTrue(brand.calculateAvailable(for: metricType), "Test \(metricType.rawValue)")
        }
    }

    func testCalculateNotAvailable() {
        for metricType in notAvailableTest {
            XCTAssertFalse(brand.calculateAvailable(for: metricType), "Test \(metricType.rawValue)")
        }
    }

    func testExplanation() throws {
        for metricType in availableTest {
            XCTAssertFalse(try brand.explanation(for: metricType).isEmpty, "Test \(metricType.rawValue)")
        }
    }

    func testNotExplanation() throws {
        for metricType in notAvailableTest {
            XCTAssertThrowsError(try brand.explanation(for: metricType).isEmpty, "Test \(metricType.rawValue)")
        }
    }
}
