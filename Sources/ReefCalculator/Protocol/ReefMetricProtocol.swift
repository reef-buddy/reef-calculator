import Foundation

public protocol ReefMetricProtocol {
    var label: String { get }
    var suggestedDefaultMetric: (min: Float?, max: Float?) { get }
}
