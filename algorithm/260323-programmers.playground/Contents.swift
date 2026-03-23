import UIKit

// 1. 정수 제곱근 판별

func solution1(_ n:Int64) -> Int64 {
    var doubleN = sqrt(Double(n))
    return doubleN != round(doubleN) ? -1 : Int64((doubleN + 1) * (doubleN + 1))
}

func solution1_1(_ n: Int64) -> Int64 {
    var doubleN = Int64(sqrt(Double(n)))
    
    return doubleN * doubleN == n ? (doubleN + 1) * (doubleN + 1) : -1
}


print(solution1(121)) // 144
print(solution1(3)) // -1

print(solution1_1(121)) // 144
print(solution1_1(3)) // -1


// 2. 자연수 뒤집어 배열로 만들기

func solution2(_ n:Int64) -> [Int] {
    // Int($0) -> 이렇게 바로 변환이 안됌
    // String(n).reversed()는 ReversedCollection<String> 을 반환
    // reversed() 는 [Character]가 아니라, lazy reversed view를 반환 -> map 할 때 각 요소는 Character 타입
    
    // String(n).reversed().compactMap { Int(String($0)) } 
    return String(n).reversed().compactMap { $0.wholeNumberValue }
}

print(solution2(12345))
