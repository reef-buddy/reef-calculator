import Foundation

/// Step to add water during inscruction
struct AddWater: Step {
    let ml: Int

    var description: String {
        "\(ml)ml of water"
    }
}
