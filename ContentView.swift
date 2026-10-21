import SwiftUI

struct ContentView: View {
    @State private var inputAmount = 0.0
    @State private var inputUnit = "meters"
    @State private var outputUnit = "kilometers"

    let units = ["meters", "kilometers", "feet", "yards", "miles"]

    var convertedAmount: Double {
        let meters: Double

        switch inputUnit {
        case "kilometers":
            meters = inputAmount * 1000
        case "feet":
            meters = inputAmount / 3.281
        case "yards":
            meters = inputAmount / 1.094
        case "miles":
            meters = inputAmount * 1609.34
        default:
            meters = inputAmount
        }

        switch outputUnit {
        case "kilometers":
            return meters / 1000
        case "feet":
            return meters * 3.281
        case "yards":
            return meters * 1.094
        case "miles":
            return meters / 1609.34
        default:
            return meters
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Enter Amount") {
                    TextField("Amount", value: $inputAmount, format: .number)
                        .keyboardType(.decimalPad)

                    Picker("From", selection: $inputUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit)
                        }
                    }

                    Picker("To", selection: $outputUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                }

                Section("Result") {
                    Text("\(convertedAmount.formatted()) \(outputUnit)")
                        .font(.title2)
                }
            }
            .navigationTitle("Unit Converter")
        }
    }
}
