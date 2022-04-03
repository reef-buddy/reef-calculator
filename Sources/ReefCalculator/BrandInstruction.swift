import Foundation

/// Wrapper for ``Brand`` and help to access all method
public class BrandInstruction {
    /// ``Brand`` used for method
    public var brand: Brand

    public init(_ brand: Brand = .jbl) {
        self.brand = brand
    }

    /// Instruction how to use ``MetricType`` test for ``Brand``
    public func instruction(for metricType: MetricType) throws -> Instructions {
        try brand.instruction(for: metricType)
    }
}
