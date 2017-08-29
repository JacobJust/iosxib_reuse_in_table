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
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        doInit()
    }
    
    open override func prepareForInterfaceBuilder() {
        doInit()
    }
    
    open override func prepareForReuse() {
         print("hej2: \(frame.width)")
    }
    
    
    func doInit() {
        let content = Bundle(for: Content.self).loadNibNamed("Content", owner: self, options: nil)![0] as! Content
        content.width.constant =  ViewController.w
        self.contentView.addSubview(content)
    }
}
