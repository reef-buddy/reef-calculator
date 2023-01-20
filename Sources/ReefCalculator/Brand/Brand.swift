import Foundation

/// Representation Brand of product
public protocol Brand {
    /// Calculate result for a ``MetricProtocol`` from value
    ///
    ///  - Parameter for: Metric contains MetricType
    ///  - Parameter value: Input value from user used for calculate
    ///  - Returns: Float result of calcul
    func calculate(for: MetricProtocol, value: Float) throws -> Float

    /// Determine if calculate is available for ``MetricType``
    /// - Parameter for: ``MetricType``
    /// - Returns: availability in calculate
    func calculateAvailable(for: MetricType) -> Bool

    /// Return explanation for how to use value in calculate method
    func explanation(for: MetricType) throws -> String

    /// Return instruction for how to use the test
    func instruction(for: MetricType) throws -> Instructions

    /// Represent the brand name
    var name: String { get }
}
