import Foundation

public extension Colombo {
    // swiftlint:disable line_length
    func explanation(for metricType: MetricType) throws -> String {
        switch metricType {
        case .kh:
            return NSLocalizedString("Set the amount of KH-2 test fluid in milliliter what was needed to let the colour convert from blue to yellow", bundle: .module, comment: "")
        case .ca, .mg:
            return NSLocalizedString("Set the amount of test fluid in milliliter what was needed to convert color", bundle: .module, comment: "")
        default:
            throw InvalidMetricType()
        }
    }
}
