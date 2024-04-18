import Foundation

public enum MetricBaseElement: ReefMetricProtocol {
    case density
    case kh
    case ph

    public var label: String {
        switch self {
        case .kh:
            "Alkalinity"
        case .density:
            "Density"
        case .ph:
            "Ph"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        case .kh:
            (7, 10)
        case .density:
            (1022, 1024)
        case .ph:
            (7.9, 8.5)
        }
    }
}

extension MetricBaseElement: CaseIterable {}
