import Foundation

public extension JBL {
    // swiftlint:disable function_body_length cyclomatic_complexity
    func instruction(for metricType: MetricType) throws -> Instructions {
        switch metricType {
        case .no2:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                AddReagent(reagentNumber: 2, droplets: 5)
                Wait(minute: 5)
            }
        case .no3:
            return Instructions {
                AddWater(ml: 10)
                Spoon(reagent: 1, size: .large)
                AddReagent(reagentNumber: 2, droplets: 6)
                Wait(minute: 15)
            }
        case .sio2:
            return Instructions {
                AddWater(ml: 10)
                AddReagent(reagentNumber: 1, droplets: 10)
                Wait(minute: 3)
                AddReagent(reagentNumber: 2, droplets: 10)
                Wait(minute: 3)
                Spoon(reagent: 3, size: .small)
                Wait(minute: 3)
            }
        case .fe:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                Wait(minute: 10)
            }
        case .cu:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                AddReagent(reagentNumber: 2, droplets: 5)
                Wait(minute: 15)
            }
        case .kh:
            return Instructions {
                AddWater(ml: 5)
                CountDroplets(initialColor: .blue, stopColor: .yellow)
            }
        case .ph:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 0, droplets: 4)
            }
        case .nh4:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 4)
                AddReagent(reagentNumber: 2, droplets: 4)
                AddReagent(reagentNumber: 3, droplets: 5)
                Wait(minute: 15)
            }
        case .ca:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                Spoon(reagent: 2, size: .small)
                CountDroplets(reagent: 3, initialColor: .pink, stopColor: .blue)
            }
        case .mg:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                Shake(seconds: nil)
                Wait(minute: 1)
                CountDroplets(reagent: 2, initialColor: .pink, stopColor: .green)
            }
        case .po4:
            return Instructions {
                AddWater(ml: 10)
                Spoon(reagent: 1, size: .small)
                Shake(seconds: nil)
                AddReagent(reagentNumber: 2, droplets: 10)
                Wait(minute: 10)
            }
        case .o2:
            return Instructions {
                FillFlask()
                AddReagent(reagentNumber: 1, droplets: 6)
                AddReagent(reagentNumber: 2, droplets: 6)
                Shake(seconds: 30)
                AddReagent(reagentNumber: 3, droplets: 6)
                Shake(seconds: 30)
                Wait(minute: 10)
            }
        case .co2:
            return Instructions {
                AddWater(ml: 20)
                AddReagent(reagentNumber: 1, droplets: 5)
                CountDroplets(reagent: 2, initialColor: .white, stopColor: .pink)
            }
        case .density:
            throw UnavailableInstruction()
        default:
            throw UnavailableInstruction()
        }
    }
}
