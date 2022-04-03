import Foundation

public extension Hanna {
    // swiftlint:disable function_body_length cyclomatic_complexity
    func instruction(for _: MetricType) throws -> Instructions {
        throw InvalidMetricType()
    }
}
