import Foundation

public extension Salifert {
    // swiftlint:disable function_body_length cyclomatic_complexity
    func instruction(for metricType: MetricType) throws -> Instructions {
        switch metricType {
        case .no2:
            return Instructions {
                AddWater(ml: 1)
                Spoon(reagent: 1, size: .small)
                Shake(seconds: 20)
                Wait(minute: 3)
            }
        case .no3:
            return Instructions {
                AddWater(ml: 1)
                AddReagent(reagentNumber: 1, droplets: 4)
                Spoon(reagent: 2, size: .small)
                Shake(seconds: 10)
                Wait(minute: 3)
            }
        case .po4:
            return Instructions {
                AddWater(ml: 10)
                AddReagent(reagentNumber: 1, droplets: 4)
                Shake(seconds: 10)
                Spoon(reagent: 2, size: .small)
                Shake(seconds: 30)
            }
        case .ph:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 6)
                Shake(seconds: 10)
            }
        case .kh:
            return Instructions {
                AddWater(ml: 4)
                AddReagent(reagentNumber: 1, droplets: 4)
                Shake(seconds: 5)
                Syringe(reagent: 2, initialColor: .blue, stopColor: .pink)
            }
        default:
            throw UnavailableInstruction()
        }
    }
}
