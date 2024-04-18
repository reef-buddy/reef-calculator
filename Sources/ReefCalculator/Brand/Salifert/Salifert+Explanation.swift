import Foundation

public extension Salifert {
    func explanation(for metricType: MetricType) throws -> String {
        switch metricType {
        case .mg:
            return NSLocalizedString("Set the amount of test fluid in milliliter what was needed to convert color", bundle: .module, comment: "")
        default:
            throw InvalidMetricType()
        }
    }
}
