//
//  ConverterHEX.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 10.07.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation


// first protocol needing converting from Hex to Dec 
// 115 = 73
protocol isHexString {
    var charHex : UInt8    {get}
    func DecHexTo(charHex: UInt8)-> UInt8
    
}

class hexConvertDec: isHexString{
   
    var charHex: UInt8
    var DigLetter: [String]?
    init(charHex:UInt8) {
        self.charHex = charHex

    }
    func dCh(charL : String) -> UInt8
    {
        if charL == "0" {
            return 0
        } else if charL == "1"{
            return 1
        } else if charL == "2"{
            return 2
        } else if charL == "3"{
            return 3
        } else if charL == "4"{
            return 4
        } else if charL == "5"{
            return 5
        } else if charL == "6"{
            return 6
        } else if charL == "7"{
            return 7
        } else if charL == "8"{
            return 8
        } else if charL == "9"{
            return 9
        } else if charL == "A"{
            return 10
        } else if charL == "B"{
            return 11
        } else if charL == "C"{
            return 12
        } else if charL == "D"{
            return 13
        } else if charL == "E"{
            return 14
        } else if charL == "F"{
            return 15
        }
        return 16
    }
    
    func DecHexTo(charHex: UInt8) -> UInt8 {
        
        var buf : String
        var result = [UInt8]()
        buf = ""
        let sSysHex : UInt8 = 16
       
        for ini in result
        {
            var i : Int
            i = 0
            if result[i] == 0 {
                break;
            }
            if result[i]<sSysHex{
                break;
            }
            result[i] = charHex%sSysHex
            
        }
        var nValue : UInt8
        nValue = 0
        for ini in result{
        var i : Int = 0
            
            nValue = result[i]+nValue
        }
        //buf = 0
       // buf = dCh(charL: charHex)
        // needing create start/stop id for computed xMess String from asterix (cat - 021)
        // start byte inside xMess ~ 'AA'
        // stop byte inside xMess ~ '03'
        // i think if use start and stop necessary seperate xMess, because stream files been this char string ("#start + 'message_#21' + stop#")
        
        return nValue
    }
}
