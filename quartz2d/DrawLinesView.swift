//
//  DrawLinesView.swift
//  quartz2d
//
//  Created by 刘威 on 15/10/21.
//  Copyright © 2015年 EGG. All rights reserved.
//

import UIKit

class DrawLinesView: UIView {
    
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
        
        CGContextMoveToPoint(context, 100, 100)
        CGContextAddLineToPoint(context, 100, 200)
        CGContextAddLineToPoint(context, 200, 200)
        
        CGContextMoveToPoint(context, 100, 300)
        CGContextAddLineToPoint(context, 100, 400)
        CGContextAddLineToPoint(context, 200, 500)
        
        CGContextSetRGBStrokeColor(context, 1, 0, 1, 1)
        CGContextSetLineWidth(context, 5)
        
        CGContextStrokePath(context)
        
        
    }
    

}
