import Foundation

public extension JBL {
    func calculate(for metric: MetricProtocol, value: Float) throws -> Float {
        switch metric.metricType {
        case .ca:
            return value * 20
        case .mg:
            guard let caMetric = metric.parentTank.metricArray.first(where: { $0.metricType == MetricType.ca }),
                  let lastMetric = caMetric.lastMetricValue else { throw InvalidMetricType() }

            return (value * 120) - lastMetric.val

        default:
            throw InvalidMetricType()
        }
    }

    func calculateAvailable(for metricType: MetricType) -> Bool {
        switch metricType {
        case .ca, .mg:
            true
        default:
            false
        }
    }
}
