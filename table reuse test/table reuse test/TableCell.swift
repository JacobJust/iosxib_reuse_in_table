//
//  TableCell.swift
//  table reuse test
//
//  Created by Jacob Just on 29/08/2017.
//  Copyright © 2017 Jacob Just. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class TableCell : UITableViewCell {
    
    var content: Content?
    var w: CGFloat = 0
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        doInit()
    }
    
    open override func prepareForInterfaceBuilder() {
        doInit()
    }
    
    func doInit() {
        let content = Bundle(for: Content.self).loadNibNamed("Content", owner: self, options: nil)![0] as! Content
        
        content.width.constant =  ViewController.w
        
        print("hej: \(ViewController.w)")
        self.contentView.addSubview(content)
    }
}
