//
//  File.swift
//  JsonOneLine
//
//  Created by Varun Kumar on 11/02/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import Foundation
class newFile{
    var value = 10
    var ablock : (()->())? = nil
    init(){
        print("init is called\n")
        ablock = {[weak self] in
            print(self?.value)
        }
    }
    deinit {
        print("the statement is deinit\n")
    }
}
