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
            "Nitrite"
        case .al:
            "Aluminium"
        case .sb:
            "Antimony"
        case .bi:
            "Bismuth"
        case .pb:
            "Lead"
        case .cd:
            "Cadmium"
        case .la:
            "Lanthanum"
        case .tl:
            "Thallium"
        case .ti:
            "Titanium"
        case .w:
            "Tungsten"
        case .hg:
            "Mercury"
        case .sio2:
            "Silicium"
        case .nh4:
            "Ammonium"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .sio2:
            (0, 1)
        case .nh4:
            (0, 0.25)
        default:
            (nil, nil)
        }
    }
}

extension MetricPollutantsElement: CaseIterable {}
