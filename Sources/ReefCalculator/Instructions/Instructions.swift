import Foundation

/// Instructions is a resultBuilder to easily manage and create test instructions
public struct Instructions {
    public let steps: [String]

    init(@StepBuilder builder: () -> [String]) {
        steps = builder()
    }
}
