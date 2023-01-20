import Foundation

/// A class that represent Colombo Brand
public struct Colombo: Brand {
    public var name: String { "Colombo" }

    public init() {}
}

extension Colombo: Identifiable {
    public var id: String {
        name
    }
}

public extension Brand where Self == Colombo {
    static var colombo: Colombo { Colombo() }
}
