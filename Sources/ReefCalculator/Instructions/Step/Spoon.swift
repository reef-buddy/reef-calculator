import Foundation

struct Spoon: Step {
    enum SpoonSize {
        case small
        case large
    }

    let reagent: Int
    let size: SpoonSize

    var description: String {
        "1 \(size) spoon of reagent \(reagent)"
    }
}
