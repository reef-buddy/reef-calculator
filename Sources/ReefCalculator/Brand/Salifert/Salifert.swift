import Foundation

/// A class that represent Salifert Brand
public final class Salifert: Brand {
    public var name: String { "Salifert" }

    public init() {}
}

public extension Brand where Self == Salifert {
    static var salifert: Salifert { Salifert() }
}
