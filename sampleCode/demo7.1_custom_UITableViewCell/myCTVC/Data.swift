//  Data.swift
//  myCTVC
//
//  Created by Al on 7/27/15.
//  Copyright (c) 2015 Al. All rights reserved.
import Foundation

class Data {
    class Entry {
        let imgName: String
        let label  : String
        let details: String
        init(img: String, label: String, details: String) {
            self.imgName = img
            self.label   = label
            self.details = details
        }
    }

    let places = [
        Entry(img: "fog.jpg",    label: "Fogville",  details: "De-congestion therapy"),
        Entry(img: "cliffs.jpg", label: "Cliffs",    details: "Is this Yosemite?"),
        Entry(img: "ocean.jpg",  label: "Ocean",     details: "Looks like Canon Beach"),
        Entry(img: "mtn.jpg",    label: "Mountains", details: "Free pinecones, anyone?"),
    ]
}