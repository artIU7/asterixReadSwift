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
        do {
         
           // let symbol: String.Encoding.Type

            //let inputString = try readLine()?.appending(path)//String(readpath)
            let allMess = try String(contentsOfFile: path, encoding: .utf8 )
    //(String.Encoding.symbol))
                        //String.Encoding(rawValue: UInt(aeBuildSyntaxOddHex)))
                //String.Encoding(rawValue: UInt(aeBuildSyntaxBadHex)))
            //String.Encoding(rawValue: UInt(ishexnumber(Int32(aeBuildSyntaxUncoercedHex)))))
/*UInt(aeBuildSyntaxUncoercedHex)*/
            //*String.Encoding.utf8.rawValue*/)
    
            print("content of the file is: \(allMess)")
                IndicatorFieldLoad.stopAnimation(Any?.self)
            IndicatorFieldLoad.isHidden = true
            dString = allMess
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
            print("litA = \(litA)")
            print("litB = \(litB)")
            print("litC = \(litC)")
            print("litD = \(litD)")
            print("litE = \(litE)")
            print("litF = \(litF)")
         
            ReadText.string = "68656c6c6f2c20776f726c64" as String
           } catch let error as NSError {
            print("there is an file reading error: \(error)")
        }
        // testing func seperate String from "decoderStreamHEX.swift"
        let defineString = dEncodeMessCAT021()
        let arraySep : [String] = ["UAP1","UAP2","UAP3","UAP4"]
        // add item for mass [array] String
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

