import Foundation

public extension Salifert {
    func calculate(for metric: MetricProtocol, value: Float) throws -> Float {
        switch metric.metricType {
        case .mg:
            return (-1500 * value) + 1500
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
