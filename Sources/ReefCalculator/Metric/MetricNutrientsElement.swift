import Foundation

public enum MetricNutrientsElement: ReefMetricProtocol {
    case no3
    case p
    case po4

    public var label: String {
        switch self {
        case .no3:
            return "Nitrate"
        case .p:
            return "Phosphorus"
        case .po4:
            return "Phosphate"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .no3:
            return (0, 20)
        case .po4:
            return (0, 0.1)
        default:
            return (nil, nil)
        }
    }
}

extension MetricNutrientsElement: CaseIterable {}
