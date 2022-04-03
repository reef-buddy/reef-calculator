import Foundation

struct Shake: Step {
    let seconds: Int?

    var description: String {
        guard let seconds = seconds else {
            return "Shake"
        }

        return "Shake \(seconds) seconds"
    }
}
