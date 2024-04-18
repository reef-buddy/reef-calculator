import Foundation

public extension Hanna {
    func calculate(for metric: MetricProtocol, value: Float) throws -> Float {
        switch metric.metricType {
        case .kh:
            return value * 0.056
        default:
            throw InvalidMetricType()
        }
    }

    func calculateAvailable(for metricType: MetricType) -> Bool {
        switch metricType {
        case .kh:
            true
        default:
            false
        }
    }
}
