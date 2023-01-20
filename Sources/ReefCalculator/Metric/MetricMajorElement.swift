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
            return "Chloride"
        case .na:
            return "Sodium"
        case .mg:
            return "Magnesium"
        case .s:
            return "Sulfur"
        case .ca:
            return "Calcium"
        case .k:
            return "Potassium"
        case .br:
            return "Bromine"
        case .sr:
            return "Strontium"
        case .b:
            return "Boron"
        case .f:
            return "Fluorid"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .mg:
            return (1200, 1600)
        case .ca:
            return (400, 440)
        default:
            return (nil, nil)
        }
    }
}

extension MetricMajorElement: CaseIterable {}
