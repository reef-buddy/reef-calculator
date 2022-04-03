import Foundation

@resultBuilder
enum StepBuilder {
    static func buildBlock(_ components: Step...) -> [String] {
        components.map {
            NSLocalizedString($0.description, bundle: .module, comment: "")
        }
    }
}
