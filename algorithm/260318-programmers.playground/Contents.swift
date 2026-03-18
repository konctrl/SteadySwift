import Foundation

// 1. 짝수 & 홀수

func getOddorEven (_ num: Int) -> String {
    if num == 0 {
        return "Even"
    }
    
    return num % 2 == 0 ? "Even" : "Odd"
}
 
print(getOddorEven(2)) // Even
print(getOddorEven(3)) // Odd


// 2. 평균 구하기

func getAverage(_ arr: [Int]) -> Double {
    return Double(arr.reduce(0) { $0 + $1 }) / Double(arr.count)
}

print(getAverage([1,2,3,4,5])) // 3.0


// 3. x만큼 간격이 있는 n개의 숫자
func getNLengthArrayXDistance(_ x: Int, _ n: Int) -> [Int64] {
    var array: [Int] = []
    
    for index in 1...n {
        array.append(x * index)
    }
    
    return array.map { Int64($0) }
}

print(getNLengthArrayXDistance(2, 5)) // [2,4,6,8,10]
print(getNLengthArrayXDistance(4, 3)) // [4,8,12]
print(getNLengthArrayXDistance(-4, 2)) // [-4, -8]

