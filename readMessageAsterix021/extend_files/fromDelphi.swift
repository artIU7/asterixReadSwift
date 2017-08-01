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
                var sMess : String{get}
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
                    var sMess : String = ""
                        var sHex : UInt8 = 0
                            var sHexbefore : String = ""
                                var lines_count: Int = 0
                                    var p : Int = 0
                                        var k : Int = 0
                                            var NumRead : Int = 0
                                                var iValue : Int = 0
                                                    var kMess : Int = 0
    var yCreate : String = ""   // год создания файла *.stream
    var yCreateU : UInt8 = 0
    let mCreate : Int = 0   // месяц создания файла
    let dCreate : Int = 0   // день создания файла
    var ink : Int = 0
    
                                                        func LoadFiles(InputArray:[UInt8])-> String{
                                                          // computed Years Create File from ATM PC
                                                            var rHex8 = String()
                                                            var rHex9 = String()
                                                            var rString = UInt8()
                                                            for slow in InputArray{
                                                                if ink == 8
                                                                    {
                                                                        sHex = slow
                                                                            let HexValue8 = hexConvertDec(charHex: sHex)
                                                                                 rHex8 = HexValue8.DecHexTo(charHex: sHex)
                                                                    }
                                                                            if ink == 9
                                                                    {
                                                                        sHex = slow
                                                                            let HexValue9 = hexConvertDec(charHex: sHex)
                                                                                 rHex9 = HexValue9.DecHexTo(charHex: sHex)
                                                                }
                                                                ink += 1
                                                            }
                                                            yCreate = rHex8 + rHex9
                                                            print("Out yCreate = \(yCreate)")
                                                            var sValue = hexConvertDec()
                                                                yCreateU = sValue.HexDecTo(charString: yCreate)
                                                               //     print("from Hex rString = \(rString)")
                                                            // end
        
        /*Reset(SourceFileStream, 1);
        Seek(SourceFileStream, 0);
        
        s:='';
        Seek(SourceFileStream, 8);
        //----
        BlockRead(SourceFileStream, bByte, 1, NumRead);
        sHex:=IntToHex(bByte, 2);
        s:=s+sHex;
        BlockRead(SourceFileStream, bByte, 1, NumRead);
        sHex:=IntToHex(bByte, 2);
        s:=s+sHex;
        wYearDBegin:=HexToDec(s);
        //----
        BlockRead(SourceFileStream, bByte, 1, NumRead);
        sHex:=IntToHex(bByte, 2);
        wMonthDBegin:=HexToDec(sHex);
        //----
        BlockRead(SourceFileStream, bByte, 1, NumRead);
        sHex:=IntToHex(bByte, 2);
        wDayDBegin:=HexToDec(sHex);
        
        dDateDBegin:=EncodeDate(wYearDBegin, wMonthDBegin, wDayDBegin); */
        //----
       // Seek(SourceFileStream, 64);
        return sMess
    }
        var isReading_ADS_B_Reports : Bool? = true
  }
  
  

