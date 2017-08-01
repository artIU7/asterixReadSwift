  // create new protocol,class for load from special file [asterix cat-021](*.stream) and create new array[Int8] element's post "get" message UAP[Field's].cat_21 by Artem Stratienko 24.07.2017 year
  //
  // if want loading message from .stream
  ////  Copyright © 2017 Артем Стратиенко. All rights reserved.
  
  import Foundation
  import Cocoa
  
  
  
  // sub cls/prt convert UInt8 to String
  protocol UInt8toString{
    var value : UInt8{get}
    var dataIntTemp : Int {get}
    var sValue : String {get}
    func U8toStr(value : UInt8) -> String
  }
  
  class fromUi8 : UInt8toString
  {
       var value: UInt8 = 0
        var dataIntTemp: Int = 0
         var sValue: String = ""
    func U8toStr(value : UInt8) -> String
    {
        dataIntTemp = Int(value)
        sValue = String(dataIntTemp)
        return sValue
    }
  }
  // end
  //create protocol
  protocol LoadFromFiles
  {
    var SourceFilesStream : String{get}
        var bbyte: UInt8{get}
            var s : String{get}
                var sMess : [String] {get}
                    var sHex : UInt8{get}
                        var sHexbefore : String{get}
                            var lines_count: Int{get}
                                var p : Int{get}
                                    var k : Int{get}
                                        var NumRead : Int{get}
                                            var iValue : Int{get}
                                                var kMess : Int{get}
                                                    func LoadFiles(InputArray : [UInt8])-> String
                                                        var isReading_ADS_B_Reports : Bool?{get}
    
  }
  class LoadStream: LoadFromFiles{
        var SourceFilesStream : String = ""
            var bbyte: UInt8 = 0
                var s : String = ""
                    var sMess = [String]()
                        var sHex : UInt8 = 0
                            var sHexbefore : String = ""
                                var lines_count: Int = 0
                                    var p : Int = 0
                                        var k : Int = 0
                                            var NumRead : Int = 0
                                                var iValue : Int = 0
                                                    var kMess : Int = 0
    var yCreate : String = ""   // год создания файла *.stream
    var yCreateU = UInt()
    var mCreate : String = ""
    var mCreateU = UInt()   // месяц создания файла
    var dCreate : String = ""
    var dCreateU = UInt()  // день создания файла
    var ink : Int = 0
    var isReading_ADS_B_Reports : Bool? = true
    
    func Reading_ADS_B_Reports(ADS_B_Hex : [String]) -> [String : String]
    {
        var UAP = [String : String]()
        
        // end function
        return UAP
    }


                                                        func LoadFiles(InputArray:[UInt8])-> String{
                                                            var namesOfIntegers = [Int: [String]]()
                                                            var sss = String()
                                                          // computed Years Create File from ATM PC
                                                            var rHex8 = String()
                                                            var rHex9 = String()
                                                            var rHex10 = String()
                                                            var rHex11 = String()
                                                            var ssMessAA = UInt8()
                                                            var ssMess02 = UInt8()
                                                            var ssMess03 = UInt8()
                                                            var ssMessOld = UInt8()
                                                            var kls = Int()
                                                            
                                                            let HexValue = hexConvertDec(charHex: sHex, charString: yCreate)
                                                            var slow = UInt8()
                                                            for ink in 8...11{
                                                                if ink == 8
                                                                    {
                                                                        slow = InputArray[ink]
                                                                        sHex = slow
                                                                        rHex8 = HexValue.DecHexTo(charHex: sHex)
                                                                    }
                                                                if ink == 9
                                                                    {
                                                                        slow = InputArray[ink]
                                                                        sHex = slow
                                                                        rHex9 = HexValue.DecHexTo(charHex: sHex)
                                                                }
                                                                if ink == 10
                                                                {
                                                                    slow = InputArray[ink]
                                                                    sHex = slow
                                                                    rHex10 = HexValue.DecHexTo(charHex: sHex)
                                                                }
                                                                if ink == 11
                                                                {
                                                                    slow = InputArray[ink]
                                                                    sHex = slow
                                                                    rHex11 = HexValue.DecHexTo(charHex: sHex)
                                                                }
                                                                //ink += 1
                                                               
                                                            }
                                                            ink = 64
                                                            while ink<InputArray.endIndex{
                                                                ssMessAA = UInt8(HexValue.HexDecTo(charString: "AA"))
                                                            /* befor don't find compare 'AA' add sMess*/
                                                                sMess.append(HexValue.DecHexTo(charHex: InputArray[ink]))
                                                                if (InputArray[ink]) == ssMessAA
                                                                {
                                                                    ink+=1
                                                                    sMess.append(HexValue.DecHexTo(charHex: InputArray[ink]))
                                                                    ssMess02 = UInt8(HexValue.HexDecTo(charString: "02"))
                                                                    ssMess03 = UInt8(HexValue.HexDecTo(charString: "03"))
                                                                    if ((InputArray[ink]) == ssMess02) || ((InputArray[ink]) == ssMess03)
                                                                    {
                                                                        ssMessOld = InputArray[ink]
                                                                        ink+=1
                                                                        sMess.append(HexValue.DecHexTo(charHex: InputArray[ink]))
                                                                    if ssMessOld == ssMess02
                                                                    {
                                                                     sMess.removeAll()
                                                                    }
                                                                    if ssMessOld == ssMess03
                                                                    {
                                                                       kls += 1
                                                                    namesOfIntegers[kls] = sMess
                                                                    //isReading_ADS_B_Reports(sMess)
                                                                        
                                                                    }
                                                                    }

                                                                }
                                                                ink+=1
                                                    }
                                                            yCreate = rHex8 + rHex9
                                                            yCreateU = HexValue.HexDecTo(charString: yCreate) // year Create
                                                            mCreate = rHex10
                                                            mCreateU = HexValue.HexDecTo(charString: mCreate) // month Create
                                                            dCreate = rHex11
                                                            dCreateU = HexValue.HexDecTo(charString: dCreate) // day Create
                                                           
                                                            
                                                            // print(sMess)
//print(namesOfIntegers[1])
                                                            for var i in 1...namesOfIntegers.count
                                                            {
                                                            print(" Dictonary \(i)=\(namesOfIntegers[i])")
                                                            }
                                                            return sss
    }
    
  }
  
  

