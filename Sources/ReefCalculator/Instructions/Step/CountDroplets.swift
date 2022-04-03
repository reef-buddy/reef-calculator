import Foundation

struct CountDroplets: Step {
    var reagent: Int?
    let initialColor: ReagentColor
    let stopColor: ReagentColor

    var description: String {
        guard let reagent = reagent else {
            return "Count droplets of reagent, stop when water \(initialColor) come \(stopColor)"
        }

        return "Count droplets of reagent \(reagent), stop when water \(initialColor) come \(stopColor)"
    }
}
