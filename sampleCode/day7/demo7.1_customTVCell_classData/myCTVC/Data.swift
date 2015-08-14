//  Data.swift
//  myCTVC
//
//  Created by Al on 7/27/15.
//  Copyright (c) 2015 Al. All rights reserved.
import Foundation

class Data { // : NSObject, NSCoding {
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
        Entry(img: "ocean.jpg",  label: "Ocean",     details: "Serenity..."),
        Entry(img: "mtn.jpg",    label: "Mountains", details: "Free pine cones"),
        Entry(img: "cliffs.jpg", label: "Cliffs",    details: "Did you borrow Ansel's camera?"),
        Entry(img: "fog.jpg",    label: "Fog",       details: "Makes me misty-eyed"),
    ]
}