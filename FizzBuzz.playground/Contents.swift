import UIKit
typealias Placeholder = ((_ num: Int)->())?

func NumsFromTo(from: Int, to: Int, completion: Placeholder) {
    for i in from...to {
        completion?(i)
    }
}

func FizzBuzz(num: Int) -> String {
    if isDivisibleBy3(num: num) && isDivisibleBy5(num: num) {
        return "FizzBuzz"
    } else if isDivisibleBy3(num: num) {
        return "Fizz"
    } else if isDivisibleBy5(num: num) {
        return "Buzz"
    } else {
        return String(num)
    }
}

func isDivisibleBy3(num : Int) -> Bool {
    if num.isMultiple(of: 3){
        return true
    }
    return false
}

func isDivisibleBy5(num : Int) -> Bool {
    if num.isMultiple(of: 5){
        return true
    }
    return false
}

NumsFromTo(from: 1, to: 100) { num in
    print(FizzBuzz(num: num))
}


import XCTest

class FizzBuzzTest : XCTestCase {
    func testIsDivisibleBy3() {
        var result = isDivisibleBy3(num: 33)
        XCTAssertEqual(result, true)
        result = isDivisibleBy3(num: 58)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleBy5() {
        var result = isDivisibleBy5(num: 35)
        XCTAssertEqual(result, true)
        result = isDivisibleBy5(num: 7)
        XCTAssertEqual(result, false)
    }
    
    func testFizzBuzz() {
        var result = FizzBuzz(num: 5)
        XCTAssertEqual(result, "Buzz")
        result = FizzBuzz(num: 3)
        XCTAssertEqual(result, "Fizz")
        result = FizzBuzz(num: 30)
        XCTAssertEqual(result, "FizzBuzz")
        result = FizzBuzz(num: 11)
        XCTAssertEqual(result, "11")
    }
}

FizzBuzzTest.defaultTestSuite.run()
