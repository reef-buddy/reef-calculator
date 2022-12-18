import Foundation

public extension Colombo {
    func calculate(for metric: MetricProtocol, value: Float) throws -> Float {
        switch metric.metricType {
        case .kh:
            return (6.0 * value) / 0.3
        case .ca:
            return (300 * value) / 0.6
        case .mg:
            return (900 * value) / 0.60
        default:
            throw InvalidMetricType()
        }
    }

    func calculateAvailable(for metricType: MetricType) -> Bool {
        switch metricType {
        case .kh, .ca, .mg:
            return true
        default:
            return false
        }
    }
}
