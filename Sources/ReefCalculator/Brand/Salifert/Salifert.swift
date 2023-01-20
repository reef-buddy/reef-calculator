import Foundation

/// A class that represent Salifert Brand
public struct Salifert: Brand {
    public var name: String { "Salifert" }

    public init() {}
}

extension Salifert: Identifiable {
    public var id: String {
        name
    }
}

public extension Brand where Self == Salifert {
    static var salifert: Salifert { Salifert() }
}
