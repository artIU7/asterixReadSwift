//
//  ViewController.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 22.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var IndicatorFieldLoad: NSProgressIndicator!
   
    @IBOutlet var ReadScroll: NSClipView!
    
   // Action for readMess
    @IBAction func readMess021(_ sender: Any) {
        
        // Читаем
        let fileManager = FileManager()
        let dirWFile = "/Users/stratienko.a/Desktop/AsteriX_021/readMessageAsterix021/input_asterix"
        let fileName = "amber104-2012-07-09-17.stream"
        let fromCheck = CheckDirectoryAsterix(fileManager: fileManager, dirWFile: dirWFile, fileName: fileName)
        let directoryWithFiles = fromCheck.checkDirectory() ?? "Empty"
        let path = (fromCheck.dirWFile as NSString).appendingPathComponent(directoryWithFiles)
        // indicator bar show/hidden
        IndicatorFieldLoad.isHidden = false
       // IndicatorFieldLoad.isDrawingFindIndicator //= true
     IndicatorFieldLoad.startAnimation(Any?.self)
        do {
            let contentsOfFile = try NSString(contentsOfFile: path, encoding: UInt(aeBuildSyntaxUncoercedHex))
            //*String.Encoding.utf8.rawValue*/)
            print("content of the file is: \(contentsOfFile)")
    IndicatorFieldLoad.stopAnimation(Any?.self)
    IndicatorFieldLoad.viewDidHide()
          //  IndicatorFieldLoad..isHidden
            IndicatorFieldLoad.isHidden = true
           } catch let error as NSError {
            print("there is an file reading error: \(error)")
        }
        //
        let sHex = CheckDirectoryAsterix(fileManager: fileManager, dirWFile: dirWFile, fileName: fileName)
        sHex.dataWithHexString(hex: "68656c6c6f2c20776f726c64")
        //
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
        IndicatorFieldLoad.isHidden = true


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

