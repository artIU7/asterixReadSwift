//
//  classCheckDirectory.swift
//  readMessageAsterix021
//
//  Created by Артем Стратиенко on 22.06.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation

class CheckDirectoryAsterix{
    
        var fileManager = FileManager()
        var dirWFile = ""
        var fileName = ""
 // func 1
        func checkDirectory() -> String? {
            do
            {
                let filesInDirectory = try fileManager.contentsOfDirectory(atPath: dirWFile)
                let files = filesInDirectory
                if files.count > 0 {
                    if files.first == fileName
                    { print("\(fileName) found")
                        return files.first
                    } else
                    {
                        print("File \(fileName) not found")
                        return nil
                    }
                }
            }
            catch let error as NSError  {
                
                print(error)
            }
            return nil
    }
    // func char analyz and conv To Data()
    func dataWithHexString(hex: String) -> Data {
        var hex = hex
        var data = Data()
        while(hex.characters.count > 0)
        {
            var c: String = hex.substring(to: hex.index(hex.startIndex, offsetBy: 2))
            hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 2))
            var ch: UInt32 = 0
            Scanner(string: c).scanHexInt32(&ch)
            var char = UInt8(ch)
            data.append(&char, count: 1)
            //data.last
         
        }
        return data
    }

// create  init(f,d,fn)

    init(fileManager: FileManager, dirWFile: String, fileName: String){
        self.fileManager = fileManager
        self.dirWFile = dirWFile
        self.fileName = fileName

    }

}
