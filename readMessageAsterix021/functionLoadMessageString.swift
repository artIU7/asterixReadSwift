//
//  functionLoadMessageString.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 27.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation

// create New class needing for search "symbol" start and end string(protocol)

protocol loadStreamMess{
    var fullHexString : String {get}
    var startByteMess : String {get}
    var endByteMess : String {get}
    var buffMess : String {get}
    func loadMessCAT021(fullHexString : String,startByteMess :String, endByteMess : String) -> [Int:String]
}

class createMes : loadStreamMess{
    var fullHexString: String = ""
    var startByteMess: String = ""
    var endByteMess: String = ""
    var buffMess: String = ""
    var sCat : Character = " "
    var buffsCat = String()
    var result : [Int: String] = [:]
    func loadMessCAT021(fullHexString: String, startByteMess: String, endByteMess: String) -> [Int : String] {
        self.fullHexString = fullHexString
        self.startByteMess = startByteMess
        self.endByteMess = endByteMess
        
        for sCat in fullHexString.characters{
            // find start Index 
            buffsCat.append(sCat)
  
        }
           return result
    }
}
