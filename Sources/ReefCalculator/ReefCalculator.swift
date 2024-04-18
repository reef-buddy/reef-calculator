import Foundation

/// Wrapper for ``Brand`` and help to access all method
public struct ReefCalculator {
    public init() {}

    /// Retrieve result from metric
    public func result(brand: any Brand, for metric: MetricProtocol, value: Float) throws -> Float {
        try brand.calculate(for: metric, value: value)
    }

    /// Explanation how to use result method
    public func explanation(brand: any Brand, for metricType: MetricType) throws -> String {
        try brand.explanation(for: metricType)
    }

    /// Instruction how to use ``MetricType`` test for ``Brand``
    public func instruction(brand: any Brand, for metricType: MetricType) throws -> Instructions {
        try brand.instruction(for: metricType)
    }

    /// Calculate the red field ratio
    /// - Parameters:
    ///   - nitrate: The NO3 level in ppm
    ///   - phosphate: The PO4 level in ppm
    /// - Returns: tupple with result and classification of algua chance
    public func calculateRedFieldRatio(nitrate: Float, phosphate: Float) -> (Int, RedFieldResult) {
        let result = nitrate / phosphate * 1.53

        let redField: RedFieldResult = switch result {
        case _ where result < 10:
            .blueGreen
        case _ where result > 22:
            .green
        default:
            .little
        }

        return (Int(result), redField)
    }
}
