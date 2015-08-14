// Demo 7.2: Dictionaries
import UIKit

extension Dictionary {
    // In:  Array of keys
    // Out: Array of values corresponding to the keys
    func keys2vals(keys: [Key]) -> [Value?] {
        return keys.map { self[$0] }
    }
}

// Initialize dictionary using one statement:
var favorites = ["exercise": "HIIT sprints",
                 "protein":  "Vital wheat gluten"]
// Can expand dictionary like this:
favorites["author"] = "Lenonard Susskind"

// Single entry look up using a key
let workout = favorites["exercise"]
let notInDictionary = favorites["movie"] // returns nil

// ERROR: Cannot treat a dictionary like an Array:
//favorites[0]

// Access a set of values (uses extension above)
let vals = favorites.keys2vals(["author", "protein"])
vals[0]
vals[1]
