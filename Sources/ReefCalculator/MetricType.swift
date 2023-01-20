import Foundation

public enum Metrics {
    public static var allMetrics: [ReefMetricProtocol] {
        var metrics: [ReefMetricProtocol] = MetricBaseElement.allCases
        metrics.append(contentsOf: MetricMajorElement.allCases)
        metrics.append(contentsOf: MetricMinorElement.allCases)
        metrics.append(contentsOf: MetricNutrientsElement.allCases)
        metrics.append(contentsOf: MetricOtherElement.allCases)
        metrics.append(contentsOf: MetricPollutantsElement.allCases)

        return metrics
    }
}

// swiftlint:disable identifier_name
public enum MetricType: String, ReefMetricProtocol {
    static let base: [MetricType] = [.density, .kh, .ph]
    static let major: [MetricType] = [.ci, .na, .mg, .s, .ca, .k, .br, .sr, .b, .f]
    static let minor: [MetricType] = [.li, .si, .i2, .ba, .mo, .ni, .mn, .as, .be, .cr, .co, .fe, .cu, .se, .ag, .v, .zn, .sn]
    static let pollutant: [MetricType] = [.no2, .al, .sb, .bi, .pb, .cd, .la, .tl, .ti, .w, .hg, .sio2, .nh4]
    static let other: [MetricType] = [.gh, .o2, .co2]
    static let nutrient: [MetricType] = [.no3, .p, .po4]
    // base
    case density
    case kh
    case ph
    // major
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
    // minor
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
    // nutrient
    case no3
    case p
    case po4
    // other
    case gh
    case o2
    case co2
    // pollutant
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

    public var suggestedDefaultMetric: (min: Float?, max: Float?) {
        switch self {
        // base
        case .kh:
            return (7, 10)
        case .density:
            return (1022, 1024)
        case .ph:
            return (7.9, 8.5)
        // major
        case .mg:
            return (1200, 1600)
        case .ca:
            return (400, 440)
        case .fe:
            return (0.002, 0.05)
        case .cu:
            return (0.0, 0.3)
        // minor
        // nutrient
        case .no3:
            return (0, 20)
        case .po4:
            return (0, 0.1)
        // other
        case .o2:
            return (5, 8)
        case .co2:
            return (0.4, 2.5)
        // pollutant
        case .sio2:
            return (0, 1)
        case .nh4:
            return (0, 0.25)
        default:
            return (nil, nil)
        }
    }

    public var label: String {
        switch self {
        // base
        case .kh:
            return "Alkalinity"
        case .density:
            return "Density"
        case .ph:
            return "Ph"
        // major
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
        // minor
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
        // nutrient
        case .no3:
            return "Nitrate"
        case .p:
            return "Phosphorus"
        case .po4:
            return "Phosphate"
        // other
        case .gh:
            return "General Hardness"
        case .o2:
            return "Dioxygen"
        case .co2:
            return "Carbon dioxide"
        // pollutant
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
