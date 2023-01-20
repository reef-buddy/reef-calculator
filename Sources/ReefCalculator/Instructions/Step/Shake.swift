import Foundation

struct Shake: Step {
    let seconds: Int?

    var description: String {
        guard let seconds else {
            return "Shake"
        }

        return "Shake \(seconds) seconds"
    }
}
