import Foundation

/// Represent a generic approch for Metric, related to a tank
/// Used in reef-buddy app and core data model
public protocol MetricProtocol {
    var metricType: MetricType { get }
    var parentTank: TankProtocol { get }
    var lastMetricValue: MetricValueProtocol? { get }
}
