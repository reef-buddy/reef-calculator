import Foundation

public extension JBL {
    func explanation(for metricType: MetricType) throws -> String {
        switch metricType {
        case .ca, .mg:
            return NSLocalizedString("Set water droplets and auto calculate value", bundle: .module, comment: "")
        default:
            throw InvalidMetricType()
        }
    }
}
