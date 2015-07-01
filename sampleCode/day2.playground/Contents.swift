// Day 2 iOS F2 Portland
import UIKit

// --------------------------------------
// DEMO 2.1: ARC & Strong/Weak References
// --------------------------------------
var objectExists: Bool = false

func objectStatus() -> String {
    println("objectExists = \(objectExists)")
    return objectExists ? "Exists" : "Does NOT exist"
}

class Person {
    var firstName : String = ""
    var lastName  : String = ""
    init(_ firstname:String, _ lastname:String) {
        self.firstName = firstname
        self.lastName = lastname
        objectExists = true
    }
    deinit {
        objectExists = false;
    }
}
objectStatus() // Starting point - no objects exist yet

var brook: Person?
var cofounder: Person?
  objectStatus() // Optional does not trigger object instantiation

// "Normal" create & destroy
brook = Person("Brook", "Riggio") // Object & ref created
  objectStatus()
brook!.firstName
brook!.lastName
brook = nil      // ref removed
  objectStatus() // No more refs, object de-alloc'd

// "Normal" create, multiple refs
brook = Person("Brook", "Riggio")
  objectStatus()
brook!.firstName
brook!.lastName
cofounder = brook // 2nd ref created
  objectStatus()
brook = nil       // 1st ref removed...
  objectStatus()  // ...but cofounder ref keeps object alive

// Weak
weak var foo: Person?
foo = cofounder
cofounder = nil
  objectStatus() // foo wasn't strong enough to save the object
foo // foo reverts to nil
