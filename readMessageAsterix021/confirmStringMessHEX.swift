//
//  confirmStringMessHEX.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 26.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import Cocoa
import AVFoundation

// network variable and let before [ protocol / class ]
protocol findLetterInMessHEX{
    // varible
    var mainString : String{get}
    var underString : Character{get}
    func compareAndConfirm(mainString: String,underString: Character)->(String)
}
// create class polymorf in protocol findLetterInMess

class stringQuota : findLetterInMessHEX{
    var underString: Character = "A"
    var mainString : String = ""
    var modifiedString : String = ""
    func compareAndConfirm(mainString: String, underString: Character) -> (String) {
        self.mainString = mainString
        self.underString = underString
       var i : Int = 0
        var j: Int = 0
        repeat{
                  let idx = mainString.index(mainString.startIndex,offsetBy: i)
                       if mainString[idx] == underString
            {
               j = j+1
            print(i,j)
      }
                i = i+1
          
        }  while i < mainString.characters.count//mainString.isEmpty != true
    return modifiedString
    }
}
