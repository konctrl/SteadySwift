import UIKit


// MARK: String <- Collection Protocol 채택
/**
 // Sequence
 └── Collection
       └── StringProtocol
             └── String
 */

// 1. 정수 내림차순으로 배치하기
func solution1(_ n:Int64) -> Int64 {
    var valueArray: [Character] = []
    
    for (index, value) in "\(n)".enumerated() {
        valueArray.append(value)
    }
    
    // Int64(String(n).sorted { $0 > $1 }.reduce(into: "") { $0.append($1) })!
    return Int64(valueArray.sorted { $0 > $1 }.reduce("") { String($0) + String($1) })!
}

func solution1_1(_ n:Int64) -> Int64  {
    // String(n).sorted { $0 > $1 } -> [Character] 반환
    return Int64(String(String(n).sorted { $0 > $1 }))!
}

print(solution1(118372)) // 873211


// 2. 하샤드 수인지 검사

// MARK: 하샤드 수
// 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
func solution2(_ x:Int) -> Bool {
    var sum: Int = 0
    
    for char in String(x) {
        sum += Int(String(char))!
    }
    
    
    
    return x % sum == 0
}

func solution2_1(_ x:Int) -> Bool {
    // compactMap -> optional 제거
    // wholeNumberValue는 Character가 숫자일 때 Int?를 반환하는 프로퍼티
    // array.reduce(0, +) <- 간결형으로도 가능
    let sum: Int = String(x).compactMap { $0.wholeNumberValue }.reduce(0) { $0 + $1 }
    
    return x % sum == 0
}

func solution2_2(_ x: Int) -> Bool {
    let sum: Int = String(x).map { Int(String($0))! }.reduce(0, +)
    
    return x % sum == 0
}


print(solution2(10)) // true
print(solution2(12)) // true
print(solution2(11)) // true
print(solution2(13)) // true
