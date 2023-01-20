import Foundation

public enum MetricBaseElement: ReefMetricProtocol {
    case density
    case kh
    case ph

    public var label: String {
        switch self {
        case .kh:
            return "Alkalinity"
        case .density:
            return "Density"
        case .ph:
            return "Ph"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .kh:
            return (7, 10)
        case .density:
            return (1022, 1024)
        case .ph:
            return (7.9, 8.5)
        }
    }
}

extension MetricBaseElement: CaseIterable {}
