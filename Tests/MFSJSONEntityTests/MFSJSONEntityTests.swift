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
        let personDict = person.propertyDictionary()
        print(personDict!)
        
        let JSONString = "{\"name\":\"max\",\"age\":98}"
        if let JSONData = JSONString.data(using: .utf8), let dictionary = try? JSONSerialization.jsonObject(with: JSONData, options: .fragmentsAllowed) as? [String:Any], let obj = Person.object(with: dictionary) as? Person {
            print("person:\(obj), name:\(obj.name), age:\(obj.age)")
        }
        let propertys = Person.propertyNames()
        print("Person propertys:\(propertys)")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

@objc class Person: NSObject {
    var name:String?
    var age:Int?
    var other:String? {nil}
    
}
