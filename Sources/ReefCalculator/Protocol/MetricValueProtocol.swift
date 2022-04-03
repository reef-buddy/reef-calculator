import Foundation

/// Represent a generic approch for MetricValue
/// Used in reef-buddy app and core data model
public protocol MetricValueProtocol {
    var val: Float { get }
}
