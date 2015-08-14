//  main.swift
//  Demo7.4_optionals_downcast
//
//  Created by Al on 8/10/15.
//  Copyright (c) 2015 Al. All rights reserved.
import Foundation

///// Optional Binding
func getIntStatus(myInt: Int?) -> String {
    var s: String
    if let tmpInt = myInt { s = "arg = \(myInt!)"    }
    else                  { s = "arg is not defined" }
    return s
}

var x: Int?
x = 5
var xRef: Int?

var s: String
s = getIntStatus(x)
println("status for x: " + s)

s = getIntStatus(xRef)
println("status for xRef: " + s)

xRef = x
s = getIntStatus(xRef) // xRef is now defined
println("status for xRef after assigning it: " + s)


///// Downcasting

let allow_crash = false

class AudioGear { // Base class
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Sub-classes
class Amp: AudioGear {
    var power: Float // In watts
    init(name: String, power: Float) {
        self.power = power
        super.init(name: name)
    }
}

class Mic: AudioGear {
    var gain: Float // In dB
    init(name: String, gain: Float) {
        self.gain = gain
        super.init(name: name)
    }
}

println("here")

let myGear = [
    Amp(name: "Mackie",    power: 1000.0),
    Mic(name: "Behringer", gain:    12.0),
//  Amp(name: "WhimpyAmp", power:    2.3),
//  Mic(name: "BadMic",    gain:   -10.0),
]
// Data type for this array is inferred to be "AudioGear"

func testDowncast(index: Int) {
    let gear = myGear[index]

    if gear is Amp { println("  myGear[\(index)] is an Amp object") }
    if gear is Mic { println("  myGear[\(index)] is a Mic object") }

    if let amp = gear as? Amp { println("  amp.power = \(amp.power)")   }
    else { println("  amp.power not valid -- gear is NOT an Amp object") }

    if let mic = gear as? Mic { println("  mic.gain = \(mic.gain)")   }
    else { println("  mic.gain not valid -- gear is NOT a Mic object") }

    // Forced unwrapping. This crashes the app when myGear[index] is not an Amp
    if (allow_crash) {
        let forced = gear as! Amp
        println("  forced.power = \(forced.power)")
    }
}

println("Testing myGear[0], which is an amp:")
testDowncast(0)

println("\nTesting myGear[1], which is a microphone:")
testDowncast(1)