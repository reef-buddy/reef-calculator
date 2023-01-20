import Foundation

public enum MetricMinorElement: ReefMetricProtocol {
    case li
    case si
    case i2
    case ba
    case mo
    case ni
    case mn
    case `as`
    case be
    case cr
    case co
    case fe
    case cu
    case se
    case ag
    case v
    case zn
    case sn

    public var label: String {
        switch self {
        case .li:
            return "Lithium"
        case .si:
            return "Silicon"
        case .i2:
            return "Iodine"
        case .ba:
            return "Barium"
        case .mo:
            return "Molybdenum"
        case .ni:
            return "Nickel"
        case .mn:
            return "Manganese"
        case .as:
            return "Arsenic"
        case .be:
            return "Beryllium"
        case .cr:
            return "Chrome"
        case .co:
            return "Cobalt"
        case .fe:
            return "Iron"
        case .cu:
            return "Copper"
        case .se:
            return "Selenium"
        case .ag:
            return "Silver"
        case .v:
            return "Vanadium"
        case .zn:
            return "Zinc"
        case .sn:
            return "Tin"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        return (nil, nil)
    }
}

extension MetricMinorElement: CaseIterable {}
