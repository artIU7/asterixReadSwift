//
//  ConverterHEX.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 10.07.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import Cocoa


// first protocol needing converting from Hex to Dec 
// 115 = 73
protocol isHexString {
    var charHex : UInt8    {get}
    func DecHexTo(charHex: UInt8)-> String
    func HexDecTo(charString : String) -> UInt8
    
}

class hexConvertDec: isHexString{
   
    var charHex: UInt8
    var DigLetter: [String]?
    init(charHex:UInt8) {
        self.charHex = charHex

    }
    init(){
        charHex = 0
    }
    func dCh(charL : UInt8) -> String
    {
        if charL == 0 {
            return "0"
        } else if charL == 1{
            return "1"
        } else if charL == 2{
            return "2"
        } else if charL == 3{
            return "3"
        } else if charL == 4{
            return "4"
        } else if charL == 5{
            return "5"
        } else if charL == 6{
            return "6"
        } else if charL == 7{
            return "7"
        } else if charL == 8{
            return "8"
        } else if charL == 9{
            return "9"
        } else if charL == 10{
            return "A"
        } else if charL == 11{
            return "B"
        } else if charL == 12{
            return "C"
        } else if charL == 13{
            return "D"
        } else if charL == 14{
            return "E"
        } else if charL == 15{
            return "F"
        }
        return ""
    }
    
    func DecHexTo(charHex: UInt8) -> String {
        
        var Varible : UInt8
        var Ni : UInt8
        var InterVar : UInt8
        var RezComputed : UInt8
        var buffV : String
        var result = [UInt8]()
        let countRes : Int
        buffV = ""
        var nValue : String
        Ni = 16
        Varible = charHex
       
        
        // 1 var - N10
        // 2 var - kSystem Letter
        // 3 var - bufresult
        // 4 var - result
        nValue = ""
        var dig_Letter = ""
        result.removeAll()
        if (charHex >= Ni){
            repeat
            {
                InterVar = Varible/Ni
                RezComputed = InterVar*Ni
                result.append(Varible-RezComputed)
                Varible = InterVar
            }
                while InterVar > Ni
            result.append(InterVar)
            countRes = result.count
            for intt in 0..<countRes{
                dig_Letter = dCh(charL: result[countRes - 1 - intt])
                nValue.append(dig_Letter)
                //nValue.insert(contentsOf: dig_Letter.characters, at: nValue.index(before: nValue.endIndex))

            }
        } else
        {
             dig_Letter = dCh(charL: charHex)
                nValue = dig_Letter
        }
        
        
        //buf = 0
       // buf = dCh(charL: charHex)
        // needing create start/stop id for computed xMess String from asterix (cat - 021)
        // start byte inside xMess ~ 'AA'
        // stop byte inside xMess ~ '03'
        // i think if use start and stop necessary seperate xMess, because stream files been this char string ("#start + 'message_#21' + stop#")
        
        return nValue
    }
    // HecDecTo
    func GetDigit(ALetter: String) -> UInt8
    {
        var result = UInt8()
        //let Aletter = String.self
        switch ALetter{
        case "0":  result = 0
        case "1" : result = 1
        case "2" : result = 2
        case "3" : result = 3
        case "4" : result = 4
        case "5" : result = 5
        case "6" : result = 6
        case "7" : result = 7
        case "8" : result = 8
        case "9" : result = 9
        case "A" : result = 10
        case "B" : result = 11
        case "C" : result = 12
        case "D" : result = 13
        case "E" : result = 14
        case "F" : result = 15
        default : result = 0
    }
        
        return result
    }
    
        
    enum ArithmeticExpersion {
        
        case Number (Int)
        
        indirect case Addition(ArithmeticExpersion, ArithmeticExpersion)
        indirect case Substraction(ArithmeticExpersion,ArithmeticExpersion)
        indirect case Division(ArithmeticExpersion,ArithmeticExpersion)
        indirect case Multiplication(ArithmeticExpersion,ArithmeticExpersion)
        indirect case Pow(ArithmeticExpersion,ArithmeticExpersion)
        func ecaluate(expression : ArithmeticExpersion? = nil) -> UInt8 {
            let expression = (expression == nil ? self : expression)
            switch expression! {
            case .Number(let value) :
                return UInt8(value)
            // сложение
            case  .Addition(let valueleft ,let  valueright):
                return self.ecaluate(expression: valueleft) + self.ecaluate(expression: valueright)
            // вычитание
            case .Substraction( let  valueleft, let valueright) :
                return self.ecaluate(expression: valueleft) - self.ecaluate(expression: valueright)
            // деление
            case .Division(let valueLeft, let valueRight) :
                return self.ecaluate(expression: valueLeft) / self.ecaluate(expression: valueRight)
            // умножение
            case .Multiplication(let valueLeft, let valueRight) :
                return self.ecaluate(expression: valueLeft) * self.ecaluate(expression: valueRight)
            // возведение в степень
            case .Pow(let valueLeft, let valueRight) :
                var result = UInt8(1)
                for _ in 1...self.ecaluate(expression: valueRight) {
                    result *= self.ecaluate(expression: valueLeft)
                }
                return UInt8(result)
            }
        }
    }
    
    
    func HexDecTo(charString: String) -> UInt8 {
        var charString = String()
        var arrayUint8 = [UInt8]()
        var arrayString = [String]()
        var i : Int
        var Num : UInt8
            Num = 0
    let sizeChar = charString.characters.count
        
        for lls in 0..<charString.characters.count {
           // arrayString.insert(sHels, at: i)
            let index = charString.index(charString.startIndex, offsetBy: lls)
            arrayString.append(String(charString[index]))
            print("ArrayString = \(arrayString[lls])")
                   }
        for i in 0..<sizeChar{
            let expr = ArithmeticExpersion.Pow(.Number(16), .Number(sizeChar - 1 - i))
            expr.ecaluate()
            
            Num = Num + expr.ecaluate() * GetDigit(ALetter: arrayString[i])
        print("Num = \(Num)")
        }
    //Num:=Num+trunc(power(16, Length(Hex)-i))*StrToInt(GetDigit(Hex[i]));
    //end;
    //result:=Num;
    //end;
    ////
        
        return Num
}
}
