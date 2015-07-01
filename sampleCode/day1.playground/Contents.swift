// iOS F2 PDX: Day 1
import UIKit

//// Code embedded in slides, not part of demos:

// Explicit data type (you set this)
var votes_last_year: Int = 1000000

// Implicit data type (inferred by Swift)
var votes_this_year = 1000000

var dryErase = "Prince"
dryErase = "The man former named Prince" // OK to do

let sharpie = "Al ordered chocolate."
//sharpie = "Can I switch half-eaten chocolate for vanilla?" // NOT valid!

struct ProductInfo {
    var price: Float = 0
    var weight: Float = 0
    var volume: Float = 0
}

var product = ProductInfo()
product.price  = 9.95
product.weight = 7.1
product.volume = 216

for var ii=0; ii < 10; ii++ {
  println("ii = \(ii)")
}

// -------------------
// DEMO 1.1: Variables and Inferred Types
// -------------------
var number_of_chairs = 1
var snackPrice = 5  // Inferred type
var lunchPrice: Float = 6 // Value looks like Int, but forced to Float
var dinnerPrice = 11.75

func printIntPrice(p: Int) {
    println("price is \(p)")
}
printIntPrice(snackPrice) // snackPrice inferred to be Int, so this works
//printIntPrice(dinnerPrice) // ERROR -- why?

// ------------------------------------
// DEMO 1.2: Constants & Initialization
// ------------------------------------
let mcHammer = "Can't touch this"
var dBowie = "Changes" // "Turn and face the strange," everyone

//mcHammer = "Let me bust the funky lyrics [from lyrics line 14]" // ERROR - why?
dBowie = "She blinded me with OOP" // Variable, so this works

println("mcHammer = \(mcHammer)")
println("dBowie   = \(dBowie)")

// Deferred initialization of constant
let lateBloomer: String
//println("lateBloomer = \(lateBloomer)")
println("dryErase = \(dryErase)")
lateBloomer = "I was held up."

// ---------------------------
// Code for multiple demos:
//   DEMO 1.3: Classes & Objects
//   DEMO 1.4: Accessing Properties
//   DEMO 1.5: Methods
// ---------------------------

// Struct, simpler and not as powerful as a class
struct Payroll {
    var name : String?
    var title : String?
    var biweeklyPay: Float?
}
var myRec: Payroll?
myRec = Payroll()
myRec!.name = "John Smith"

// Class with properties and method
class Car {
    var make = "ford"
    var model = "mustang"
    var year = "2015"
    var mpg: Float = 19
    var tankNow: Float = 10 // Current tank level, in gallons
    var sellable: Bool = false
    func roadTrip(miles: Float) {
        self.tankNow -= (miles / self.mpg)
        println("tankNow = \(tankNow)")
    }
    func makeSellable() {
        sellable = true;
    }
    func gimmeFive() -> Int { return 5 } // On your new car, of course!
}

var myJunker = Car(); // Instantiate an object
// Set junker's attributes
myJunker.make  = "Ford"
myJunker.model = "Pinto"
myJunker.year  = "1982"
myJunker.mpg = 14
myJunker.tankNow = 10
myJunker.roadTrip(125.0)
println("Gasoline left: \(myJunker.tankNow) gallons")


// For ref. (Type out to show auto-complete)
println("Sellable? \(myJunker.sellable)")
//myJunker.
myJunker.makeSellable()
println("Sellable? \(myJunker.sellable)")
//
var highHandSmack = myJunker.gimmeFive()

// ------------------------------
// DEMO 1.6 Object Initialization
// ------------------------------
class Castle {
    var nHumans: Int // No. of people who live in castle
    var names = [String]()

    init(nHumans: Int) { self.nHumans = nHumans }

    func growPop(nHumans_in: Int) {
        self.nHumans += nHumans_in
    }
    func growPop(newName: String) {
        self.nHumans++
        names.append(newName)
    }
    func celebrate() -> String {
        return "Humans are singing!"
    }
}

var portland = Castle(nHumans: 10) // Castle w/ 10 people
var seattle  = Castle(nHumans: 20) // Other castle, more crowded
portland.celebrate()

// --------------------------
// DEMO 1.7 Class Inheritance
// --------------------------
class MoatedCastle: Castle {
    var nGators: Int = 1 // No. of alligators in moat

    init(nHumans_sub_init: Int, nGators_init: Int) {
        super.init(nHumans: nHumans_sub_init)
        self.nGators = nGators_init
    }

    func moreGators(nGators_in: Int) { nGators += nGators_in }

    override func celebrate() -> String {
        return super.celebrate() + "... and alligators are dancing!"
    }
}
var pioneerSq = MoatedCastle(nHumans_sub_init: 10, nGators_init: 2)

pioneerSq.moreGators(3)
pioneerSq.celebrate()

// Scratch space for questions/experiments, etc.
class foo {
    var x: Int?
}
var F:foo
