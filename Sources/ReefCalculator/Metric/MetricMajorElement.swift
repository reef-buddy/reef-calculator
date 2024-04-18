import Foundation

public enum MetricMajorElement: ReefMetricProtocol {
    case ci
    case na
    case mg
    case s
    case ca
    case k
    case br
    case sr
    case b
    case f

    public var label: String {
        switch self {
        case .ci:
            "Chloride"
        case .na:
            "Sodium"
        case .mg:
            "Magnesium"
        case .s:
            "Sulfur"
        case .ca:
            "Calcium"
        case .k:
            "Potassium"
        case .br:
            "Bromine"
        case .sr:
            "Strontium"
        case .b:
            "Boron"
        case .f:
            "Fluorid"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .mg:
            (1200, 1600)
        case .ca:
            (400, 440)
        default:
            (nil, nil)
        }
    }
}

extension MetricMajorElement: CaseIterable {}
