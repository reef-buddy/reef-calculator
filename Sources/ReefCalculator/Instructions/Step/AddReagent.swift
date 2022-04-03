import Foundation

struct AddReagent: Step {
    let reagentNumber: Int
    let droplets: Int

    var description: String {
        "\(droplets) droplets of reagent \(reagentNumber)"
    }
}
