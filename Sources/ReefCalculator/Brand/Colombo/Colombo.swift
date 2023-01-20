import Foundation

/// A class that represent Colombo Brand
public struct Colombo: Brand {
    public var name: String { "Colombo" }

    public init() {}
}

public extension Brand where Self == Colombo {
    static var colombo: Colombo { Colombo() }
}
