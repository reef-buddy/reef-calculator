import Foundation

public extension Salifert {
    func calculate(for metric: MetricProtocol, value: Float) throws -> Float {
        switch metric.metricType {
        case .mg:
            return (900 * value) / 0.60
        default:
            throw InvalidMetricType()
        }
    }

    func calculateAvailable(for metricType: MetricType) -> Bool {
        switch metricType {
        case .mg:
            true
        default:
            false
        }
    }
}
