import UIKit

// --------------------
// Demo 3.1a: Protocols
// --------------------
class Person {
    var name: String = ""
    func awesomeProprietaryFunctionA() { }
    func awesomeProprietaryFunctionB() { }
    func awesomeProprietaryFunctionC() { }
}

var secretAgentMan = Person() // Doesn't communicate much

protocol Communicate {
    func talk()
    func thumbsUp()
}

class LoudPerson: Person, Communicate {
    func talk() {
        println("I like speaking loudly")
    }
    func thumbsUp() { } // Placeholder for demo only
}

class QuietPerson: Person, Communicate {
    var text: String = ""
    func talk() {
        text = "Speak softly, but carry a big Slack"
    }
    func thumbsUp() { } // Placeholder for demo only
}

// These people talk, albeit differently
var brute  = LoudPerson()
var flora = QuietPerson()

// --------------------
// Demo 3.1b: Delegates
// --------------------
protocol talkProtocol {
    func talkDidStart(talkSim:TalkSim, a:LoudPerson, b:QuietPerson)
    func talkDidEnd(  talkSim:TalkSim, a:LoudPerson, b:QuietPerson)
}

class talkLogger: talkProtocol {
    func talkDidStart(talkSim:TalkSim, a:LoudPerson, b:QuietPerson) {
        println("Discussion started")
    }
    func talkDidEnd(talkSim:TalkSim, a:LoudPerson, b:QuietPerson) {
        println("Discussion done")
    }
}

class TalkSim {
    let loud:  LoudPerson
    let quiet: QuietPerson
    var delegate: talkProtocol?

    init(loud_in: LoudPerson, quiet_in:QuietPerson) {
        self.loud  = loud_in
        self.quiet = quiet_in
    }

    func simulate() {
        delegate?.talkDidStart(self, a: self.loud, b: self.quiet)
        loud.talk()
        quiet.talk()
        delegate?.talkDidEnd(self, a: self.loud, b: self.quiet)
    }
}

var tSim = TalkSim(loud_in: brute, quiet_in: flora)
tSim.delegate = talkLogger()
tSim.simulate()

println("hi") // Tracer for Playground bugs


// ---------------------------------------------------------
// Misc.: Tuples, because we briefly discussed them on Day 2
// ---------------------------------------------------------
var f: (loaves: Int, cost: Double)
f.loaves =  8
f.cost = 20.9

func saleCost (loaves_in: Int, price: Double) -> (loaves: Int, salePrice: Double) {
    let loaves = loaves_in + 2
    let salePrice = 0.8 * price
    return (loaves, salePrice)
}

var g = saleCost(f.loaves, f.cost)
