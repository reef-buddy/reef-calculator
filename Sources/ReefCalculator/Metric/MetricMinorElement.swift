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
            "Lithium"
        case .si:
            "Silicon"
        case .i2:
            "Iodine"
        case .ba:
            "Barium"
        case .mo:
            "Molybdenum"
        case .ni:
            "Nickel"
        case .mn:
            "Manganese"
        case .as:
            "Arsenic"
        case .be:
            "Beryllium"
        case .cr:
            "Chrome"
        case .co:
            "Cobalt"
        case .fe:
            "Iron"
        case .cu:
            "Copper"
        case .se:
            "Selenium"
        case .ag:
            "Silver"
        case .v:
            "Vanadium"
        case .zn:
            "Zinc"
        case .sn:
            "Tin"
        }
    }

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        (nil, nil)
    }
}

extension MetricMinorElement: CaseIterable {}
