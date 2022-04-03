import Foundation

/// Represent a generic approch for Tank they have metric data
/// Used in reef-buddy app and core data model
public protocol TankProtocol {
    var metricArray: [MetricProtocol] { get }
}
