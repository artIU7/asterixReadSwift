//
//  ViewController.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 22.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Cocoa
var dString : String = ""
class ViewController: NSViewController {
    
    @IBOutlet weak var IndicatorFieldLoad: NSProgressIndicator!
   
    @IBOutlet weak var IndicatorLoad: NSProgressIndicator!

    @IBOutlet var ReadText: NSTextView!

    @IBOutlet weak var IndiGrey: NSProgressIndicator!
    
    @IBOutlet weak var LabelOperation: NSTextFieldCell!
   // Action for readMess
    @IBOutlet weak var IndicatorCallSepFunc: NSProgressIndicator!
    @IBAction func readMess021(_ sender: Any) {
        LabelOperation.stringValue = "Load from *.stream"
        var dataFromFile_hex = NSData()
        // Читаем
        let fileManager = FileManager()
        let dirWFile = "/Users/stratienko.a/Desktop/AsteriX_021/readMessageAsterix021/input_asterix"
        let fileName = "amber104-2012-07-09-17.stream"
        let fromCheck = CheckDirectoryAsterix(fileManager: fileManager, dirWFile: dirWFile, fileName: fileName)
        let directoryWithFiles = fromCheck.checkDirectory() ?? "Empty"
        let path = (fromCheck.dirWFile as NSString).appendingPathComponent(directoryWithFiles)
        var litA = 0
        var litB = 0
        var litC = 0
        var litD = 0
        var litE = 0
        var litF = 0
        var varB : Character
        let massABCDEF:[Character] = ["a","b","c","d","e","f"]
        // indicator bar show/hidden
        IndicatorFieldLoad.isHidden = false
        IndicatorFieldLoad.startAnimation(Any?.self)
       // LabelOperation.Dr
        let letA = "AA"
   
        var count73 : Int = 0
        do {
         
           // let symbol: String.Encoding.Type

            //let inputString = try readLine()?.appending(path)//String(readpath)
            let allMess = try String(contentsOfFile: path, encoding: String.Encoding(rawValue: UInt(aeBuildSyntaxUncoercedHex))) //encoding: String.Encoding: UInt(ae)) )
           // var data = fileManager.contents(atPath: path)
            //var lengthasterixData =
            //let lengthasterixData = dataFromFile_hex.length(dataFromFile_hex)
            
            
            dataFromFile_hex = try NSData(contentsOfFile: path)
            let lengthasterixData = dataFromFile_hex.length;
            print("Вывод длины строки NSData = \(lengthasterixData)")
          //  print(dataFromFile_hex.description)
            
            let bytesPointer = UnsafeMutableRawPointer.allocate(bytes: lengthasterixData, alignedTo: 2)
            dataFromFile_hex.getBytes(bytesPointer, length: lengthasterixData)
            print("Cout buffer(bytesPointer)\(bytesPointer)")
            var massele = [UInt8]()
           // massele.append(x)
           // print(massele[0])
            for listItemByte in 0...lengthasterixData-1{
                 //115 //73
                let SecondByte = bytesPointer+listItemByte
                let xByte = SecondByte.load(as: UInt8.self)
                massele.append(xByte)
            }
            print("Print first element \(massele[1])")
                   print("Значение first element = \(0x74)")
            var i: Int
            i = 0
            for UiItem in massele{
                print("number i = \(i) - \(UiItem) (\(Int(UiItem)))")
                i+=1
            }
            // call fuction computed Years Created Files Stream 
            
                let sLoadFiles = LoadStream()
                    sLoadFiles.LoadFiles(InputArray: massele)
                print(sLoadFiles.yCreate)
          /*  if massele[0] == 115
            {
            print(massele[0])
            }
            else { print("massele[0] NOT a 73") }
            print(massele[11])
            print(massele[12])
            print(massele[72])
            print("Значение АА = \(0xAA)")
            print("Значение 10 = \(0x10)")
            print("Значение А = \(0xA)")
            print("Значение 1010 = \(0x1010 )")*/
        
         //   var searchLet = hexConvertDec(charHex: letA)
            
        //    let underStep = searchLet.dCh(charL: letA)
        //    var postStep : UInt8 = 0
            for bufcharHex in letA.characters{
         //   postStep = searchLet.convHexToDec(charHex: letA)
         //       //var afterStep :UInt8
         //      var afterStep = postStep
            }
         //   print(underStep,postStep)
            
            
           // let x = bytesPointer.load(as: UInt8.self) //115 //73
            //let bytetwoPointer = bytesPointer+1
           // let y = bytetwoPointer.load(as: UInt8.self) //116 //7
           // let byteTreePointer = bytesPointer+2
           // let z = byteTreePointer.load(as: UInt8.self) // 114 // 72
           // let byteFourPointer = bytesPointer+3
           // let i = byteFourPointer.load(as: UInt8.self) // 101 // 65
           // let byteFivePointer = bytesPointer+4
           // let k = byteFivePointer.load(as: UInt8.self) // 0 // 0 61

            //print(x,y,z,i,k)
         
            bytesPointer.deallocate(bytes: lengthasterixData, alignedTo: 2)

           // print("Output bingo =\(bingo)")
       //     var rawPointer = UnsafeMutableRawPointer.allocate(bytes: lengthasterixData, alignedTo: 1)
            
            //rawPointer.storeBytes(of: dataFromFile_hex)
      //  var  x = dataFromFile_hex.getBytes(rawPointer)
 
      //      print(x)
        //    var masArrayByte = String()
          //  masArrayByte = dataFromFile_hex as String
            print(dataFromFile_hex.length)
         //   print(dataFromFile_hex.bytes)
         //   print(dataFromFile_hex)
            
          //  for dataItem in dataFromFile_hex {
            //    print(dataItem)
           // }
          //          for lktd in 0..<dataFromFile_hex.length{
         //       print(lktd)
         //   }
           // var trange = Range(dataFromFile_hex.length as Range
            let DataToString = fromCheck.dataWithHexString(hex: allMess) as Data
           // for stringData in DataToString{
             //   if UInt8(stringData) == UInt8(df) {
               //     count73 = count73+1
              //  }
          //  }
      //  print(" Количестов символов \"aa\" \(count73)")
        print("from Data_HEX: \(fromCheck.dataWithHexString(hex: allMess)) //=======", DataToString)
     //   ReadText.string = String(dataFromFile_hex.length,DataToString)//String(describing: DataToString)
           // print(DataToString)
         //   print("content of the file is: \(allMess)")
            IndicatorFieldLoad.stopAnimation(Any?.self)
            IndicatorFieldLoad.isHidden = true
          //  dString = allMess
            
 
            IndicatorCallSepFunc.startAnimation(Any?)
            LabelOperation.stringValue = "function call sepString"
        
            for sLmess in dString.characters{
                varB = " "
                for varB in massABCDEF{
                    if sLmess == varB && varB == "a"{
                        litA = litA+1
                        IndiGrey.increment(by: Double(litA/100))
                        //print(sLmess)
                        //print("lit_\(litB)",litA)
                    }
                    if sLmess == varB && varB == "b"{
                        litB = litB+1
                        IndiGrey.increment(by: Double(litB/100))
                        //print(sLmess)
                        //print("lit_\(litB)",litA)
                    }
                    if sLmess == varB && varB == "c"{
                        litC = litC+1
                        IndiGrey.increment(by: Double(litC/100))
                        //print(sLmess)
                        //print("lit_\(litB)",litA)
                    }
                    if sLmess == varB && varB == "d"{
                        litD = litD+1
                        IndiGrey.increment(by: Double(litD/100))
                        //print(sLmess)
                        //print("lit_\(litB)",litA)
                    }
                    if sLmess == varB && varB == "e"{
                        litE = litE+1
                        IndiGrey.increment(by: Double(litE/100))
                        //print(sLmess)
                        //print("lit_\(litB)",litA)
                    }
                    if sLmess == varB && varB == "f"{
                        litF = litF+1
                        IndiGrey.increment(by: Double(litF/100))
                        //print(sLmess)
                        //print("lit_\(litB)",litA)
                    }
                }
            }
             IndicatorCallSepFunc.stopAnimation(Any?)
          /*  print("litA = \(litA)")
            print("litB = \(litB)")
            print("litC = \(litC)")
            print("litD = \(litD)")
            print("litE = \(litE)")
            print("litF = \(litF)") */
         
           //ReadText.string = "68656c6c6f2c20776f726c64" as String
           }
                catch let error as NSError
            {
            print("there is an file reading error: \(error)")
            }
        // testing func seperate String from "decoderStreamHEX.swift"
        let defineString = dEncodeMessCAT021()
        let arraySep : [String] = ["UAP1","UAP2","UAP3","UAP4"]
        // add item for mass [array] String
      //  defineString.separateStringFromMess(sLmess: dString)
        
        for dStr in arraySep {
            defineString.addFromMessToArray(massString: dStr)
        }
        // call func seperate Mess from *.stream
        // output three print's
        for i in 0..<4{
        print(arraySep[i])
        print(defineString.sepMess[i])
             }
        let exPl = stringQuota()
        
       // exPl.compareAndConfirm(mainString: dString  /*"ABCADAKLADSADFAKL"*/, underString: "A")
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        IndicatorFieldLoad.isHidden = true
        LabelOperation.stringValue.isEmpty


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

