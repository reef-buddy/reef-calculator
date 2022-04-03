import Foundation

// swiftlint:disable identifier_name
public enum MetricType: String {
    case kh
    case gh
    case ca
    case mg
    case ph
    case nh4
    case no2
    case no3
    case po4
    case sio2
    case fe
    case k
    case cu
    case o2
    case co2
    case density

    @available(*, deprecated, renamed: "suggestedDefaultMetric")
    public var defaultMetric: (min: Float?, max: Float?) {
        suggestedDefaultMetric
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .kh:
            return (7, 10)
        case .gh:
            return (nil, nil)
        case .ca:
            return (400, 440)
        case .mg:
            return (1200, 1600)
        case .ph:
            return (7.9, 8.5)
        case .nh4:
            return (0, 0.25)
        case .no2:
            return (nil, nil)
        case .no3:
            return (0, 20)
        case .po4:
            return (0, 0.1)
        case .sio2:
            return (0, 1)
        case .fe:
            return (0.002, 0.05)
        case .k:
            return (nil, nil)
        case .cu:
            return (0, 0.3)
        case .o2:
            return (5, 8)
        case .co2:
            return (0.4, 2.5)
        case .density:
            return (1022, 1024)
        }
    }

    public var label: String {
        switch self {
        case .kh:
            return "Alkalinity"
        case .gh:
            return "General Hardness"
        case .ca:
            return "Calcium"
        case .mg:
            return "Magnesium"
        case .ph:
            return "Ph"
        case .nh4:
            return "Ammonium"
        case .no2:
            return "Nitrite"
        case .no3:
            return "Nitrate"
        case .po4:
            return "Phosphate"
        case .sio2:
            return "Silicium"
        case .fe:
            return "Iron"
        case .k:
            return "k"
        case .cu:
            return "Copper"
        case .o2:
            return "Dioxygen"
        case .co2:
            return "Carbon dioxide"
        case .density:
            return "Density"
        }
    }
}

extension MetricType: CaseIterable {}

extension MetricType: Identifiable {
    public var id: String {
        rawValue
    }
}

extension MetricType: Comparable {
    public static func < (lhs: MetricType, rhs: MetricType) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
