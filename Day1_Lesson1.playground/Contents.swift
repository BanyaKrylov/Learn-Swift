
func sayHelloFiveTimes(string text: String) {
    for _ in 1..<5 {
        print(text)
    }
}

sayHelloFiveTimes(string : "Hello, world")

let temperature = 100.0

func celsius (from Fr: Double) -> Double {
    return (Fr - 32) * 5 / 9
}

print("C from F: \(celsius(from: temperature))")

func farenheit (from Ce: Double) -> Double {
    return 9 / 5 * Ce + 32
}

print("F from C: \(farenheit(from: temperature))")

print("Check \(farenheit(from: celsius(from: temperature)))")