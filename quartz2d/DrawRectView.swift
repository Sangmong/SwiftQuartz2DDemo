//
//  DrawRectView.swift
//  quartz2d
//
//  Created by 刘威 on 15/10/21.
//  Copyright © 2015年 EGG. All rights reserved.
//

import UIKit

class DrawRectView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        

        CGContextAddRect(context, CGRect(x: 100, y: 200, width: 100, height: 100))
        CGContextSetRGBFillColor(context, 1, 0, 0, 1)
        
        CGContextFillPath(context)
        
        CGContextSetLineWidth(context, 5)
        CGContextSetRGBStrokeColor(context, 0, 1, 0, 1)

        CGContextStrokeRect(context, CGRect(x: 100, y: 200, width: 100, height: 100))
    }
}


