//
//  TableViewCell.swift
//  JsonOneLine
//
//  Created by Varun Kumar on 11/02/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import UIKit
protocol taped {
    func new(index:Int)
}
class TableViewCell: UITableViewCell {
    
    var delegate:taped?
    var index:IndexPath?
    
    
    
    
    @IBAction func btn(_ sender: Any) {
        
        delegate?.new(index: (index?.row)!)
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

   
}
