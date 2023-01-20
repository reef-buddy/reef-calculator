
import Foundation

public enum MetricOtherElement: ReefMetricProtocol {
    case gh
    case o2
    case co2

    public var label: String {
        switch self {
        case .gh:
            return "General Hardness"
        case .o2:
            return "Dioxygen"
        case .co2:
            return "Carbon dioxide"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .o2:
            return (5, 8)
        case .co2:
            return (0.4, 2.5)
        default:
            return (nil, nil)
        }
    }
}

extension MetricOtherElement: CaseIterable {}
