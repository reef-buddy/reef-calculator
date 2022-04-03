import XCTest
import ReefCalculator

final class MetricTypeTests: XCTestCase {
    func testMetricTypeCount() {
        XCTAssertEqual(16, MetricType.allCases.count)
    }

    func testMetricTypeID() {
        XCTAssertEqual("ph", MetricType.ph.id)
    }

    func testMetricTypeComparable() {
        let metrics: [MetricType] = [.ph, .ca]
        XCTAssertEqual([.ca, .ph], metrics.sorted(by: <))
    }

    func testMetricTypeKh() {
        XCTAssertEqual(7.0, MetricType.kh.suggestedDefaultMetric.min)
        XCTAssertEqual(10.0, MetricType.kh.suggestedDefaultMetric.max)
        XCTAssertEqual("kh", MetricType.kh.id)
    }

    func testMetricTypeGh() {
        XCTAssertNil(MetricType.gh.suggestedDefaultMetric.min)
        XCTAssertNil(MetricType.gh.suggestedDefaultMetric.max)
        XCTAssertEqual("gh", MetricType.gh.id)
    }

    func testMetricTypeCa() {
        XCTAssertEqual(400, MetricType.ca.suggestedDefaultMetric.min)
        XCTAssertEqual(440, MetricType.ca.suggestedDefaultMetric.max)
        XCTAssertEqual("ca", MetricType.ca.id)
    }

    func testMetricTypeMg() {
        XCTAssertEqual(1200, MetricType.mg.suggestedDefaultMetric.min)
        XCTAssertEqual(1600, MetricType.mg.suggestedDefaultMetric.max)
        XCTAssertEqual("mg", MetricType.mg.id)
    }

    func testMetricTypePh() {
        XCTAssertEqual(7.9, MetricType.ph.suggestedDefaultMetric.min)
        XCTAssertEqual(8.5, MetricType.ph.suggestedDefaultMetric.max)
        XCTAssertEqual("ph", MetricType.ph.id)
    }

    func testMetricTypeNh4() {
        XCTAssertEqual(0, MetricType.nh4.suggestedDefaultMetric.min)
        XCTAssertEqual(0.25, MetricType.nh4.suggestedDefaultMetric.max)
        XCTAssertEqual("nh4", MetricType.nh4.id)
    }

    func testMetricTypeNo2() {
        XCTAssertNil(MetricType.no2.suggestedDefaultMetric.min)
        XCTAssertNil(MetricType.no2.suggestedDefaultMetric.max)
        XCTAssertEqual("no2", MetricType.no2.id)
    }

    func testMetricTypeNo3() {
        XCTAssertEqual(0, MetricType.no3.suggestedDefaultMetric.min)
        XCTAssertEqual(20, MetricType.no3.suggestedDefaultMetric.max)
        XCTAssertEqual("no3", MetricType.no3.id)
    }

    func testMetricTypePo4() {
        XCTAssertEqual(0, MetricType.po4.suggestedDefaultMetric.min)
        XCTAssertEqual(0.1, MetricType.po4.suggestedDefaultMetric.max)
        XCTAssertEqual("po4", MetricType.po4.id)
    }

    func testMetricTypeSio2() {
        XCTAssertEqual(0, MetricType.sio2.suggestedDefaultMetric.min)
        XCTAssertEqual(1.0, MetricType.sio2.suggestedDefaultMetric.max)
        XCTAssertEqual("sio2", MetricType.sio2.id)
    }

    func testMetricTypeFe() {
        XCTAssertEqual(0.002, MetricType.fe.suggestedDefaultMetric.min)
        XCTAssertEqual(0.05, MetricType.fe.suggestedDefaultMetric.max)
        XCTAssertEqual("fe", MetricType.fe.id)
    }

    func testMetricTypeK() {
        XCTAssertNil(MetricType.k.suggestedDefaultMetric.min)
        XCTAssertNil(MetricType.k.suggestedDefaultMetric.max)
        XCTAssertEqual("k", MetricType.k.id)
    }

    func testMetricTypeCu() {
        XCTAssertEqual(0.0, MetricType.cu.suggestedDefaultMetric.min)
        XCTAssertEqual(0.3, MetricType.cu.suggestedDefaultMetric.max)
        XCTAssertEqual("cu", MetricType.cu.id)
    }

    func testMetricTypeO2() {
        XCTAssertEqual(5, MetricType.o2.suggestedDefaultMetric.min)
        XCTAssertEqual(8, MetricType.o2.suggestedDefaultMetric.max)
        XCTAssertEqual("o2", MetricType.o2.id)
    }

    func testMetricTypeCo2() {
        XCTAssertEqual(0.4, MetricType.co2.suggestedDefaultMetric.min)
        XCTAssertEqual(2.5, MetricType.co2.suggestedDefaultMetric.max)
        XCTAssertEqual("co2", MetricType.co2.id)
    }

    func testMetricTypeDensity() {
        XCTAssertEqual(1022, MetricType.density.suggestedDefaultMetric.min)
        XCTAssertEqual(1024, MetricType.density.suggestedDefaultMetric.max)
        XCTAssertEqual("density", MetricType.density.id)
    }
}
