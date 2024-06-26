import Foundation
import ReefCalculator
import XCTest

class ColomboTests: XCTestCase {
    let brand = Colombo()

    let availableTest: [MetricType] = [.kh, .ca, .mg]

    lazy var notAvailableTest: [MetricType] = MetricType.allCases.filter { metric in
        !availableTest.contains(where: { available in
            available.rawValue == metric.rawValue
        })
    }

    func testName() {
        XCTAssertEqual("Colombo", brand.name)
    }

    func testCalculateAvailable() {
        for metricType in availableTest where brand.calculateAvailable(for: metricType) {
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
            XCTAssertThrowsError(try brand.explanation(for: metricType).isEmpty)
        }
    }

    func testCa() throws {
        struct Tank: TankProtocol {
            let metricArray: [any MetricProtocol] = []
        }
        struct Metric: MetricProtocol {
            let metricType: MetricType = .ca
            let parentTank: TankProtocol = Tank()
            let lastMetricValue: (any MetricValueProtocol)? = nil
        }

        XCTAssertEqual(325, try brand.calculate(for: Metric(), value: 0.65))
        XCTAssertEqual(370, try brand.calculate(for: Metric(), value: 0.74))
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

        XCTAssertEqual(915, try brand.calculate(for: Metric(), value: 0.61).rounded())
        XCTAssertEqual(1275, try brand.calculate(for: Metric(), value: 0.85))
    }
}
