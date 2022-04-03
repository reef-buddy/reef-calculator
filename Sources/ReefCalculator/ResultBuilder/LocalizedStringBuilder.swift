import Foundation

@resultBuilder
enum LocalizedStringBuilder {
    static func buildBlock(_ components: [String]) -> [String] {
        components.map {
            NSLocalizedString($0, bundle: .module, comment: "")
        }
    }

    static func buildEither(first component: [String]) -> [String] {
        component.map {
            NSLocalizedString($0, bundle: .module, comment: "")
        }
    }

    static func buildEither(second component: [String]) -> [String] {
        component.map {
            NSLocalizedString($0, bundle: .module, comment: "")
        }
    }
}
