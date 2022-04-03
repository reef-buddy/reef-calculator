import Foundation

/// A class that represent JBL Brand
public final class JBL: Brand {
    public var name: String { "JBL" }

    public init() {}
}

public extension Brand where Self == JBL {
    static var jbl: JBL { JBL() }
}
