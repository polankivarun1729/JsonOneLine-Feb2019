//
//  TestFile.swift
//  JsonOneLine
//
//  Created by Varun Kumar on 11/02/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import Foundation
class singleTon{

    

    
    static let shared = singleTon()
    private init(){
        
        if !UserDefaults.standard.bool(forKey: "isClicked"){
            print("this methode is calling")
            
            UserDefaults.standard.set(true, forKey: "isClicked")
            UserDefaults.standard.synchronize()
        }
        
        
        
    }
    
    public func thisIsCallingMeth(){
        print("The SingleTon is Executed\n")
    }
    
    
    
    
    
}
