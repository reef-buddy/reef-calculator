import Foundation

public extension Salifert {
    func calculate(for _: MetricProtocol, value _: Float) throws -> Float {
        throw InvalidMetricType()
    }

    func calculateAvailable(for _: MetricType) -> Bool {
        false
    }
}
