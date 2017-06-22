//
//  ViewController.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 22.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet var ReadScroll: NSClipView!
    
   // Action for readMess
    @IBAction func readMess021(_ sender: Any) {
        
        // Читаем
        let fileManager = FileManager()
        let dirWFile = "/Users/stratienko.a/Desktop/asterixFile"
        let fileName = "amber104.asterix"
        let fromCheck = CheckDirectoryAsterix(fileManager: fileManager, dirWFile: dirWFile, fileName: fileName)
        let directoryWithFiles = fromCheck.checkDirectory() ?? "Empty"
        let path = (fromCheck.dirWFile as NSString).appendingPathComponent(directoryWithFiles)
        do {
            let contentsOfFile = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
            print("content of the file is: \(contentsOfFile)")
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

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

