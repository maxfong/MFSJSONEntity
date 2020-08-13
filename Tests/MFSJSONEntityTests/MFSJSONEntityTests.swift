import XCTest
@testable import MFSJSONEntity

final class MFSJSONEntityTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        print("Hello, MFS JSONEntity! ")
        let person = Person()
        person.name = "max"
        person.age = 99
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

class Person: NSObject {
    var name:String?
    var age:UInt?
    var other:String? {nil}
    
}
