import Foundation
@testable import ReefCalculator
import XCTest

class SalifertTests: XCTestCase {
    let brand = Salifert()

    let availableTest: [MetricType] = [.mg]

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

    func testMg() throws {
        struct Tank: TankProtocol {
            let metricArray: [any MetricProtocol] = []
        }
        struct Metric: MetricProtocol {
            let metricType: MetricType = .mg
            let parentTank: TankProtocol = Tank()
            let lastMetricValue: (any MetricValueProtocol)? = nil
        }

        XCTAssertEqual(1260, try brand.calculate(for: Metric(), value: 0.16))
        XCTAssertEqual(180, try brand.calculate(for: Metric(), value: 0.88))
    }
}
