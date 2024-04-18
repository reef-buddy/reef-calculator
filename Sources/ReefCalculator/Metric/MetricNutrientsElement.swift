import Foundation

public enum MetricNutrientsElement: ReefMetricProtocol {
    case no3
    case p
    case po4

    public var label: String {
        switch self {
        case .no3:
            "Nitrate"
        case .p:
            "Phosphorus"
        case .po4:
            "Phosphate"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .no3:
            (0, 20)
        case .po4:
            (0, 0.1)
        default:
            (nil, nil)
        }
    }
}

extension MetricNutrientsElement: CaseIterable {}
