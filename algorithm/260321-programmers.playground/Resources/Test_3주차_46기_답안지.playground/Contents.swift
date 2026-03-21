import UIKit

/*:
# 앨런 - Swift 마스터 스쿨 46기
*/
/*:
## 두번째 테스트 (3주차) 답안지
---
*/
/**>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 그동안 배운 내용의 복습 및 약간의 응용이 들어가 있을 뿐입니다. 이 문제를 잘 풀 수 있다고
 좋은 개발자가 될 수 있는 것도 아니고, 실망하거나 좌절할 필요도 없습니다.
 우린 이제 시작일 뿐입니다. 😄
 가장 중요한 것은 포기하지 않고, 꾸준함을 유지하는 것일뿐!
 안풀리면, 다음 문제로 넘어가면되고, 이번에 못풀면 잘 공부해서, 다음 번에 똑같은 문제를 잘 풀면됩니다.
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>**/

// 서술형의 경우, 주석처리를 하고 작성하면 됩니다.
// (시간이 약간 모자랄 수도 있을 것 같긴한데, 되는 대로 풀어서, 슬랙 DM으로 전달해 주세요!)


/**==================================================================
 [1번 문제]
 - 아래의 딕셔너리에서, 키값 "A"에 해당하는 value값인 "Apple"을 꺼내서 출력하세요.
   (옵셔널 문자열값이 아닌 문자열 값으로 출력하세요.)
   (힌트: 옵셔널 바인딩)
 ===================================================================**/


var dic = ["A": "Apple", "B": "Banana", "C": "City"]


// 딕셔너리의 결과값이 옵셔널 타입이기 때문에.. 옵셔널 바인딩과 합쳐서 작성
if let result = dic["A"] {
    print(result)
}

// 또는 아래와 같은 방법도 가능
// 결과값을 꺼내고, 옵셔널 바인딩은 따로
var result22 = dic["A"]

if let result = result22 {
    print(result)
}

// 출력예시
// "Apple"              (올바른 출력 형태)
// "Optional("Apple")"  (잘못된 출력 형태)



/**==================================================================
 [2번 문제]
  -  아래의 반복문을 사용해서, 1부터 40사이의 숫자 중에서 2의 배수를 출력하는 코드를 완성하세요.
 ===================================================================**/


for num in 1...40 {
    if num % 2 == 0 {
        print("2의 배수: \(num)")
    }
}

// 출력예시
// 2의 배수: 2
// 2의 배수: 4
// 2의 배수: 6
// 2의 배수: 8
// ...등



/**==================================================================
 [3번 문제]
  - 아래 정수형의 num 변수와, (문자열 배열의) array 변수가 있어요.
    어떻게 해야, 100가지의 랜덤숫자를 이용해서 배열에서 넘치지 않고, 범위의 에러 없이
    배열 내부의 값을 꺼낼 수 있을까요?
    (아래처럼 범위가 넘치지 않고 반복 되도록 배열의 요소에 접근할 수 있는 방법을 제시)
    "Hello" -> "Jobs" -> "Swift" -> "Cook" -> "Hello"
    (힌트: 나머지 값은 때로는 아주 유용합니다.)
 ===================================================================**/


var num = Int.random(in: 1...100)
var array = ["Hello", "Jobs", "Swift", "Cook"]


// 아래 주석을 제거하시면 됩니다.
var result = array[num % array.count]
print(result)



/**==================================================================
 [4번 문제]
  - 아래의 배열에서, 가장 큰 숫자를 찾아내는 함수의 구현을 완성시켜 보세요. 배열 전달시
    배열 내의 가장 큰 숫자를 찾아내서, 리턴을 하면 됩니다.
    (아래 배열의 경우, 가장 큰 숫자가 9이죠? 숫자 9를 리턴할 수 있도록 함수 내부를
     구현 하시면 됩니다.)
    (힌트: 함수 내부에 변수 하나를 만들고, 어떻게 하면 가장 큰 숫자를 지속적으로 이 변수에 담을 수 있을까요?)
    (잘못푸셔도 괜찮아요. 오늘 세션(시간 복잡도 관련 알고리즘 세션)에서 풀어드릴 예정입니다.)
 ===================================================================**/


var numArray = [4, 0, 1, 7, 9, 3]


// 대략적인 힌트
func findMaxNumber(array:[Int]) -> Int {
    var maxNum = array[0]   // (가장 큰 숫자를 담을 변수) 일단 배열의 첫번째 숫자를 저장
    
    for num in array {      // 배열에 있는 요소들을 한번씩 꺼내서
        if num > maxNum {   // 지금 현재 maxNum 숫자랑 비교해서 num가 더 크면
            maxNum = num    // num을 maxNum에 저장
        }                   // 결국 반복문으로 모든 요소들을 한번씩 거치니... 가장 큰 숫자가 저장될 것임
    }
    
    return maxNum           // 가장 큰 숫자 리턴
}



// 함수의 실행
findMaxNumber(array: numArray)




/**==================================================================
 [5번 문제]
  - 소수를 판별하는 함수를 완성해 보세요.
    1) 소수인 경우, "소수입니다."를 출력
    2) 소수가 아닌 경우, "소수가 아닙니다."를 출력
    (소수는 1과 자기자신만으로 나누어 떨어지는 1보다 큰 양의 정수)
    (힌트: 숫자를 자기 자신으로 나누어보면 되겠죠?)
 ===================================================================**/

// 소수를 판별하는 함수를 완성하세요.
func primeNumber(num: Int) {

    for i in 2..<num {
        if num % i == 0 {    // (자기자신이 아닌) 나누어 떨어지는 숫자가 있으면, 소수가 아님
            print("소수가 아닙니다.")
            return
        }
    }
    print("소수입니다.")
}



primeNumber(num: 7)  // 소수입니다.
primeNumber(num: 4)  // 소수가 아닙니다.
primeNumber(num: 11) // 소수입니다.
primeNumber(num: 97) // 소수입니다.




/**==================================================================
 [6번 문제]
  - 아래의 배열에서, 배열의 앞의 3개 요소를 교체할 수 있는 문법 2가지를 제시하세요.
    예시) 배열 내의 ["A, "B", "C"]를 ["x", "y", "z"]로 교체
    (힌트: 1.서브스크립트 / 2.정식문법)
 ===================================================================**/


var alphabetArray = ["A", "B", "C", "D", "E", "F", "G"]


// 아래 배열을 이용
["x", "y", "z"]

// 1. 서브스크립트
alphabetArray[0...2] = ["x", "y", "z"]


// 2. 정식 문법
alphabetArray.replaceSubrange(0...2, with: ["x", "y", "z"])





/**==================================================================
 [7번 문제]
  - 아래의 puppy 배열에서, 가장 뒤쪽의 문자열 "p"를 제거하는 코드를 작성하세요.
    (힌트: 1) 뒤에서부터 인덱스 확인 2) 인덱스를 이용 배열에서 제거(삭제) )
 ===================================================================**/



var puppy = ["p", "u", "p", "p", "y"]

// 여기에 코드 작성

if let index = puppy.lastIndex(of: "p") {
    puppy.remove(at: index)
}


// 배열 확인 및 출력
print(puppy)


/**==================================================================
 [8번 문제]
  - 함수 만들어 보기: 정수값을 한개 받아, 해당 정수가 짝수인지 여부를 판단하는 함수를
                  구현해 보세요. (힌트: 짝수 -> 참 / 홀수 -> 거짓)
 
    (함수 실행 예시)
    isEvenNumber(num: 3)    // 거짓
    isEvenNumber(num: 4)    // 참
 ===================================================================**/

// 함수 정의 (구현)

func isEvenNumber(num: Int) -> Bool {
    return num % 2 == 0
}


// 함수 실행 (아래 주석 제거하고 실행해보기)

print("1번문제 결과 (1):", isEvenNumber(num: 3))
print("1번문제 결과 (2):", isEvenNumber(num: 4))



/**==================================================================
 [9번 문제] - 딕셔너리 조작과 튜플 반환
  - 다음 점수 딕셔너리에서 최고점을 찾아, (최고점수, 최고점수받은사람)
    형태의 튜플을 반환하는 함수를 작성하세요.
    (힌트: 만약 딕셔너리가 비어있는 경우가 있다면 함수가 nil을 반환하도록 만드세요.)
 ===================================================================**/

let scores = ["해원": 85, "설윤": 92, "릴리": 78, "지우": 96, "규진": 83]


// 함수 힌트
func findHighestScore(_ scores: [String: Int]) -> (topStudent: String, highest: Int)? {
    
    guard !scores.isEmpty else { return nil } // 딕셔너리가 비어있지 않는 경우 (딕셔너리가 비어있는 경우 nil리턴)
    
    var topStudent: (String, Int) = scores.first!  // 아무값이나 하나 일단 튜플 형태로 저장
    
    for (name, score) in scores {  // 딕셔너리를 하나씩 나열해보기
        if score > topStudent.1 {  // 더 큰 점수가 나타나면, 튜플 교체하는 원리
            topStudent = (name, score)
        }
    }
    
    return topStudent
}


// 또는 아래처럼 풀어도 됨

func findHighestScore2(_ scores: [String: Int]) -> (topStudent: String, highest: Int)? {
    
    guard !scores.isEmpty else { return nil }  // 딕셔너리가 비어있지 않는 경우 (딕셔너리가 비어있는 경우 nil리턴)
        
    var topStudentName = scores.first!.key   // (딕셔너리의 첫번째 요소로) 이름 저장
    var maxScore = scores.first!.value       // (딕셔너리의 첫번째 요소로) 점수 저장
    
    for (name, score) in scores {   // 딕셔너리를 하나씩 나열해보기
        if score > maxScore {       // 더 큰 점수가 나타나면, 값을 교체하는 원리
            topStudentName = name   // 이름교체
            maxScore = score        // 점수교체
        }
    }
    
    return (topStudent: topStudentName, highest: maxScore)   // 튜플로 변환 후, 리턴
}


// 또는 아래처럼 풀어도 됨 (추후에 배우는 고차함수 개념을 사용)

func findHighestScore3(_ scores: [String: Int]) -> (topStudent: String, highest: Int)? {
    
    guard !scores.isEmpty else { return nil }    // 딕셔너리가 비어있지 않는 경우 (딕셔너리가 비어있는 경우 nil리턴)
        
    let sortedScores = scores.sorted { $0.value < $1.value }     // 점수기준 오름차순 정렬
    let topStudent = sortedScores.last!                          // 가장 점수높은 학생
    
    return (topStudent: topStudent.key, highest: topStudent.value)   // 튜플로 변환 후, 리턴
}


// 실행 테스트
if let result = findHighestScore(scores) {
    print("최고 점수 학생: \(result.topStudent), 최고점: \(result.highest)점")
} else {
    print("점수 데이터가 없습니다.")
}



/**==================================================================
 [10번 문제]
  - 클래스와 구조체의 차이에 대해서, 아는대로 서술해 보세요.
    (중요: 이번 문제를 계기로, 정확하게 알고계시면 좋습니다. 면접의 단골 질문입니다.)
 ===================================================================**/

// 실제로 디테일하게는 여러가지 차이점이 있지만, 아래 가장 중요한 차이점 2가지는
// 반드시 외우고 있어야 함

// 1) 상속 가능 여부
//    (1) 클래스는 상속가능
//    (2) 구조체는 상속 불가능

// 2) 메모리 저장의 차이와 복사시
//    (1) 클래스의 인스턴스는 Heap (참조 타입) / 주소 복사 (Shallow Copy/얕은 복사)
//    (2) 구조체의 인스턴스는 Stack (값 타입) / 값 복사 (Deep Copy/깊은 복사)
//        (정확하게는, 값타입의 경우 Data/Heap/Stack 모두에 저장가능)




/**==================================================================
 [11번 문제] - 종합 응용
  - 간단한 주소록 관리 시스템을 만드세요. (아래 코드에서 이미 많은 힌트가 제공되어 있으니,
    어렵다고 생각하지 말고, 한번 도전해보도록 하죠.)
    연락처 정보를 저장하고, 검색하고, 수정하고, 삭제하는 기능이 있어야 합니다.
    (힌트: 주소록 내부의 contacts변수는 딕셔너리 형태로 저장되고, 각 사람은 하나의
     id가 부여되어야 합니다. nextId변수는 현재 저장된 연락처의 id역할을 하며,
     연락처가 저장될때마다, 변경이 되어야 다음아이디가 부여될 수 있습니다.)
 ===================================================================**/

struct Contact {
    let id: Int
    var name: String
    var phoneNumber: String?
    var email: String?
    
    // 연락처 정보를 문자열로 반환하는 계산속성 (문자열 형태는 자유롭게 작성하셔도 됩니다.)
    var description: String {
        "주소록 - \(self.name): (전화번호) \(self.phoneNumber ?? "없음"), (이메일) \(self.email ?? "없음")"
    }
}

class AddressBook {
    private var contacts: [Int: Contact] = [:]    // 클래스 내부에, 연락처(구조체)를 저장하는 딕셔너리
    private var nextId = 1                        // 현재 저장된 연락처의 id 역할
    
    // 연락처 추가 후 ID 반환
    func addContact(name: String, phone: String?, email: String?) -> Int {
        // (추가 힌트 제공)
        let contact = Contact(id: nextId, name: name, phoneNumber: phone, email: email)  // 연락처 생성
        contacts[nextId] = contact   // 딕셔너리에 연락처 추가
        nextId += 1                  // 다음 연락처를 위해, 아이디 정수 늘리기
        return contact.id
    }
    
    // ID로 연락처 찾기 (없는 경우 nil 리턴)
    func findContact(by id: Int) -> Contact? {
        return contacts[id]
    }
    
    // (이름으로) 연락처 검색 (없는 경우 nil 리턴)
    func searchContact(by name: String) -> Contact? {
        // 추가 힌트 코드 제공
        for contact in self.contacts.values {   // 딕셔너리의 값들을 하나씩 나열해보기
            if contact.name == name {          // 이름이 같은 경우, 연락처 리턴
                return contact
            }
        }
        return nil
    }
    
    // (이름으로) 연락처 정보 수정, 성공시 true 반환
    func updateContact(name: String, phone: String?, email: String?) -> Bool {
        // 추가 힌트 코드 제공
        for (id, contact) in self.contacts {   // 딕셔너리를 하나씩 나열해보기
            if contact.name == name {     // 이름이 같은 경우, 동일한 아이디에 연락처 수정
                self.contacts[id] = Contact(id: id, name: name, phoneNumber: phone ?? contact.phoneNumber, email: email ?? contact.email)   // 바뀌는 연락처가 없는 경우, 기존의 연락처를 사용
                return true
            }
        }
        return false
    }
    
    // 연락처 삭제, 성공시 true 반환
    func deleteContact(id: Int) -> Bool {
        // 추가 힌트 코드 제공
        guard contacts[id] != nil else { return false }  // 실제 id에 해당하는 값이 있을 때만 삭제 가능
        contacts.removeValue(forKey: id)
        return true
    }
    
    // 모든 연락처를 배열로 반환
    func getAllContacts() -> [Contact] {
        return Array(contacts.values)
    }
}

// 테스트
let addressBook = AddressBook() // 연락처 클래스 만들기 (내부에 딕셔너리 가짐)

// 연락처 추가하기 (내부 딕셔너리에 하나씩 추가됨)
let id1 = addressBook.addContact(name: "해원", phone: "010-1234-5678", email: "hong@example.com")
let id2 = addressBook.addContact(name: "설윤", phone: "010-9876-5432", email: "sul@example.com")
let id3 = addressBook.addContact(name: "릴리", phone: nil, email: "lily@example.com")
let id4 = addressBook.addContact(name: "지우", phone: "010-4321-1234", email: nil)
let id5 = addressBook.addContact(name: "규진", phone: "010-7890-7654", email: "kyoo@example.com")


print("모든 연락처:")
for contact in addressBook.getAllContacts() {
    print(contact.description)
}

print("이름으로 검색 후 출력:")
if let searchResult = addressBook.searchContact(by: "설윤") {
    print(searchResult.description)
}




//  (추후에 배우는 개념으로 종합적으로 푼다면..) ⭐️


class AddressBook2 {
    private var contacts: [Int: Contact] = [:]
    private var nextId = 1
    
    func addContact(name: String, phone: String?, email: String?) -> Int {
        let contact = Contact(id: nextId, name: name, phoneNumber: phone, email: email)
        contacts[nextId] = contact
        nextId += 1
        return contact.id
    }
    
    func findContact(by id: Int) -> Contact? {
        return contacts[id]
    }

    func searchContact(by name: String) -> Contact? {
        return contacts.values.first(where: { $0.name == name })
    }
    
    // (이름으로) 연락처 정보 수정, 성공시 true 반환
    func updateContact(name: String, phone: String?, email: String?) -> Bool {
        return contacts.first(where: { $0.value.name == name }).map { (id, existingContact) in
                contacts[id] = Contact(
                    id: id,
                    name: name,
                    phoneNumber: phone ?? existingContact.phoneNumber, // 바뀌는 연락처가 없는 경우, 기존의 연락처를 사용
                    email: email ?? existingContact.email
                )
                return true
            } ?? false
    }
    
    // 연락처 삭제, 성공시 true 반환
    func deleteContact(id: Int) -> Bool {
        // 추가 힌트 코드 제공
        guard contacts[id] != nil else { return false }  // 실제 id에 해당하는 값이 있을 때만 삭제 가능
        contacts.removeValue(forKey: id)
        return true
    }
    
    // 모든 연락처를 배열로 반환
    func getAllContacts() -> [Contact] {
        return contacts.values.sorted { $0.name < $1.name }   // 이름순 배열로 반환
    }
}




/**>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 수고 하셨습니다. 😄
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>**/
