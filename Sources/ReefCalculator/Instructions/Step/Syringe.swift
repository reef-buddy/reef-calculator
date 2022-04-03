import Foundation

struct Syringe: Step {
    var reagent: Int
    let initialColor: ReagentColor
    let stopColor: ReagentColor

    var description: String {
        "Use syringe with reagent \(reagent), stop when water \(initialColor) come \(stopColor)"
    }
}
