//
//  Content.swift
//  table reuse test
//
//  Created by Jacob Just on 29/08/2017.
//  Copyright © 2017 Jacob Just. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class Content : UIView {
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var width: NSLayoutConstraint!
    required override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
   
}
