import Foundation

/// A class that represent JBL Brand
public struct JBL: Brand {
    public var name: String { "JBL" }

    public init() {}
}

extension JBL: Identifiable {
    public var id: String {
        name
    }
}

public extension Brand where Self == JBL {
    static var jbl: JBL { JBL() }
}
