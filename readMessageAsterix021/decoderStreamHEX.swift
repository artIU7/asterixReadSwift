//
//  decoderStreamHEX.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 23.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import Cocoa
// create new protocol for alg sort and sep string[]
protocol decBigString{
        var i : Int{get}
            var j : Int{get}
                var k: Int{get}
                    var l: Int{get}
                        var m: Int{get}
                            var n : Int {get}
    
    var mess : Double{get}
        var sMess : Double{get}
            var nMess: Double {get}
                var bMess: Double {get}
                    var lMess : Double {get}
    
                        var buff : String{get}
                    var buffS : String{get}
                var buffN : String{get}
            var buffB : String{get}
        var buffl : String{get}
    var sepMess : [String]{get}
    
    func separateStringFromMess(sLmess: String) -> [String]
}

class dEncodeMessCAT021 : decBigString{
    var i = 0,j = 0,k = 0,l = 0,m = 0,n : Int = 0
    var mess = 0.0,sMess = 0.0,nMess = 0.0,bMess = 0.0,lMess : Double = 0.0
    var buff = "",buffS = "",buffN = "",buffB = "",buffl = ""
    var sepMess : [String] = []
    var sLmess : String = ""
    func addFromMessToArray(massString : String) {
        sepMess.append(massString)
    }
    func separateStringFromMess(sLmess: String) -> [String]{
        self.sLmess = sLmess
        let moveIndexString = 64
        let irds = sLmess.index(sLmess.startIndex,offsetBy: moveIndexString + i)
        for isuse in sLmess.characters{
            print(sLmess[irds])
        }
    return sepMess
    }
}




