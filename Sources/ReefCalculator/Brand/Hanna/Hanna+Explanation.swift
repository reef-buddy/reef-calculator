import Foundation

public extension Hanna {
    func explanation(for metricType: MetricType) throws -> String {
        switch metricType {
        case .kh:
            return NSLocalizedString("Convert PPM to Dkh", bundle: .module, comment: "")
        default:
            throw InvalidMetricType()
        }
    }
}
