//
//  Item.swift
//  homepwner
//
//  Created by Blake Cook on 9/13/18.
//  Copyright © 2018 Blake Cook. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated:Date
    
    init(name:String, valueInDollars: Int, serialNumber: String?){
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
    }
    
    convenience init(random:Bool = false){
        if random {
            let adjectives = ["fluffy", "rusty", "shiney"]
            let nouns = ["bears", "Spork", "Mac"]
            var idx = arc4random_uniform(UInt32(nouns.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            
            let randomValue = Int(arc4random_uniform(100))
            
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, valueInDollars: randomValue, serialNumber: randomSerialNumber)
        }else{
            self.init(name:"", valueInDollars: 0, serialNumber: nil)
        }
    }

}
