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
            (7, 10)
        case .density:
            (1022, 1024)
        case .ph:
            (7.9, 8.5)
        // major
        case .mg:
            (1200, 1600)
        case .ca:
            (400, 440)
        case .fe:
            (0.002, 0.05)
        case .cu:
            (0.0, 0.3)
        // minor
        // nutrient
        case .no3:
            (0, 20)
        case .po4:
            (0, 0.1)
        // other
        case .o2:
            (5, 8)
        case .co2:
            (0.4, 2.5)
        // pollutant
        case .sio2:
            (0, 1)
        case .nh4:
            (0, 0.25)
        default:
            (nil, nil)
        }
    }

    public var label: String {
        switch self {
        // base
        case .kh:
            "Alkalinity"
        case .density:
            "Density"
        case .ph:
            "Ph"
        // major
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
        // minor
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
        // nutrient
        case .no3:
            "Nitrate"
        case .p:
            "Phosphorus"
        case .po4:
            "Phosphate"
        // other
        case .gh:
            "General Hardness"
        case .o2:
            "Dioxygen"
        case .co2:
            "Carbon dioxide"
        // pollutant
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
