
import Foundation

public enum MetricOtherElement: ReefMetricProtocol {
    case gh
    case o2
    case co2

    public var label: String {
        switch self {
        case .gh:
            "General Hardness"
        case .o2:
            "Dioxygen"
        case .co2:
            "Carbon dioxide"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .o2:
            (5, 8)
        case .co2:
            (0.4, 2.5)
        default:
            (nil, nil)
        }
    }
}

extension MetricOtherElement: CaseIterable {}
