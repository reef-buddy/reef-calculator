import Foundation

public extension Colombo {
    func instruction(for metricType: MetricType) throws -> Instructions {
        switch metricType {
        case .kh:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                CountDroplets(reagent: 2, initialColor: .blue, stopColor: .yellow)
            }
        case .ca:
            return Instructions {
                AddWater(ml: 5)
                AddReagent(reagentNumber: 1, droplets: 5)
                Spoon(reagent: 2, size: .small)
                Syringe(reagent: 3, initialColor: .pink, stopColor: .blue)
            }
        case .mg:
            return Instructions {
                AddWater(ml: 2)
                AddReagent(reagentNumber: 1, droplets: 5)
                AddReagent(reagentNumber: 2, droplets: 5)
                Syringe(reagent: 3, initialColor: .pink, stopColor: .blue)
            }
        default:
            throw InvalidMetricType()
        }
    }
}
