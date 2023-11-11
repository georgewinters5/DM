import Foundation

func cantorsDiagonalArgument(_ binaryList: [String]) -> [String] {
    var result = [String]()

    for i in 0..<binaryList.count {
        var newBinary = binaryList[i]
        let indexToToggle = newBinary.index(newBinary.startIndex, offsetBy: i % newBinary.count)
        let charToToggle = newBinary[indexToToggle]
        newBinary.replaceSubrange(indexToToggle...indexToToggle, with: (charToToggle == "0") ? "1" : "0")
        result.append(newBinary)
    }

    return result
}

print("Cantor's Diagonal Argument:")
print("Cantor's Diagonal Argument demonstrates the uncountable infinity of real numbers. The argument challenges the idea of enumerating all real numbers between 0 and 1 by representing them in binary form. Cantor constructs a new binary number by toggling specific digits along the diagonal of any proposed enumeration. This method systematically generates a real number not present in the original list, revealing the impossibility of fully listing them.")

let binaryList = ["1101", "0010", "1011", "0100"]
print("\nOriginal Binary List:")
for binary in binaryList {
    print(binary)
}

let result = cantorsDiagonalArgument(binaryList)

print("\nApplying Cantor's Diagonal Argument:")
for (i, binary) in result.enumerated() {
    let originalBinary = binaryList[i]
    print("\(originalBinary)   \(binary)")
}

print("\nExplanation:")
print("1. Begin with a list of binary numbers, each representing a unique real number.")
print("2. For each number, switch one digit (0 to 1 or 1 to 0) at the next position diagonally downwards.")
print("3. The resulting sequence forms a new binary number not present in the original list.")
