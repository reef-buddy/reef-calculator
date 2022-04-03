import Foundation

struct Wait: Step {
    let minute: Int

    var description: String {
        "Wait \(minute) minute"
    }
}
