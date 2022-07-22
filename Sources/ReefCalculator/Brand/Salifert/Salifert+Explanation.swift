import Foundation

public extension Salifert {
    func explanation(for _: MetricType) throws -> String {
        throw InvalidMetricType()
    }
}
