import Foundation

public enum MetricPollutantsElement: ReefMetricProtocol {
    case no2
    case al
    case sb
    case bi
    case pb
    case cd
    case la
    case tl
    case ti
    case w
    case hg
    case sio2
    case nh4

    public var label: String {
        switch self {
        case .no2:
            return "Nitrite"
        case .al:
            return "Aluminium"
        case .sb:
            return "Antimony"
        case .bi:
            return "Bismuth"
        case .pb:
            return "Lead"
        case .cd:
            return "Cadmium"
        case .la:
            return "Lanthanum"
        case .tl:
            return "Thallium"
        case .ti:
            return "Titanium"
        case .w:
            return "Tungsten"
        case .hg:
            return "Mercury"
        case .sio2:
            return "Silicium"
        case .nh4:
            return "Ammonium"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .sio2:
            return (0, 1)
        case .nh4:
            return (0, 0.25)
        default:
            return (nil, nil)
        }
    }
}

extension MetricPollutantsElement: CaseIterable {}
