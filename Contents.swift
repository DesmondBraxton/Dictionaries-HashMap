import UIKit

// return Int(string) ?? 0 // nil coalessing, default value  will be 0
// Solve without the simple conveersion method
// Apply a simple algorithm
// 1337 = 1000 + 300 + 30 + 7
// 1337 = 1 * 10^3 + 3 * 10 ^2 + 10^1 + 7 * !0^0
                
var sampleString = "1337"
    
func convert(string: String) -> Int {
    var total = 0
    
    // Allows us to map from characters to n intager value
    // A hashmap is basically a dictionary
    
    let valueMap = [
        "1" as Character: 1,
        "3" : 3,
        "7" : 7 ]
    
    for (i,c) in string.enumerated() {
        let exponent = string.count - i - 1
        if let value = valueMap[c] {
            let num = Decimal(value) * pow(10, exponent)
            total += NSDecimalNumber(decimal: num).intValue
            
        }
    }
    return total
}
    
convert(string: sampleString)

