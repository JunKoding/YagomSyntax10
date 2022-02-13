import Cocoa

// 옵셔널(Optional) - 값이 있을 수도 없을 수도.

// nil의 가능성을 명시적으로 표현.
// nil의 가능성을 문서화 하지 않아도 코드만으로 충분히 표현 가능.
// 문서/주석 작성 시간을 절약.
// 전달 받은 값이 옵셔널이 아니라면 nil 체크를 하지 않더라도 안심하고 사용.
// 효율적인 코딩.
// 예외 상황을 최소화하는 안전한 코딩.

// someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) {
    // ...
}

// someParam must not be nil
func someFuction(someParam: Int) {
    // ...
}

someFunction(someOptionalParam: nil)
// 오류) someFuction(someParam: nil)
// -> 옵셔널이 아닌 값에는 nil 불가.




// 옵셔널(Optional) - enum + general

enum Optional<Wrapped>: ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}

let optionalValue: Optional<Int> = nil
let optionalValue: Int? = nil
// 2개가 같은 표현.





// 옵셔널 표현 1. -> !
// Implicitly Unwrapped Optional - 암시적 추출 옵셔널.

var optionalValue: Int! = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능.
optionalValue = optionalValue + 1

// nil 할당 가능.
optionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생.
// 오류) optionalValue = optionalValue + 1
// -> nil + 1 이므로.




// 옵셔널 표현 2. -> ?

var optionalValue: Int? = 100 // Int가 있을 수도 없을 수도 있는 값.

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능.
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가.
// 오류) optionalValue = optionalValue + 1

