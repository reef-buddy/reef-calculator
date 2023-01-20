import Foundation

/// A class that represent Hanna Brand
public struct Hanna: Brand {
    public var name: String { "Hanna" }

    public init() {}
}

extension Hanna: Identifiable {
    public var id: String {
        name
    }
}

public extension Brand where Self == Hanna {
    static var hanna: Hanna { Hanna() }
}
