import UIKit

// 1. 문자열 내 p와 y의 개수

func solution1(_ s:String) -> Bool {
    var countP = 0;
    var countY = 0;
    
    for str in s.lowercased() {
        switch str {
        case "p":
            countP += 1
            break;
        case "y":
            countY += 1
            break;
        default:
            break;
        }
    }

    return countP == 0 && countY == 0 ? true : countP == countY
}

func solution1_1(_ s: String) -> Bool {
    let str = s.lowercased()
    
    return str.filter { $0 == "p" }.count == str.filter { $0 == "y"}.count
}


print(solution1("pPoooyY"))
print(solution1("Pyy"))
print(solution1_1("pPoooyY"))
print(solution1_1("Pyy"))


// 2. 음양 더하기

// imperative way
func solution2(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for (index, absolute) in absolutes.enumerated() {
        var sign = signs[index]
        
        var target = sign ? absolute : -absolute
        sum += target
    }
    
    return sum
}

// declarative way
func solution2_1(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    return absolutes.enumerated().map { (index, absolute) in
            return signs[index] ? absolute : -1 * absolute
        }.reduce(0, +)
}


print(solution2([4,7,12], [true, false, true]))
print(solution2([1,2,3], [false, false, true]))

print(solution2_1([4,7,12], [true, false, true]))
print(solution2_1([1,2,3], [false, false, true]))
