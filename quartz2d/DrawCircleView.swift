//
//  DrawCircleView.swift
//  quartz2d
//
//  Created by 刘威 on 15/10/21.
//  Copyright © 2015年 EGG. All rights reserved.
//

import UIKit

class DrawCircleView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        
        
        
        CGContextStrokePath(context)
        CGContextAddArc(context, 150, 200, 100, 0, 3.14159 * 2, 0)
        CGContextSetRGBFillColor(context, 1, 0, 0, 1)
        CGContextFillPath(context)
    
        
        CGContextAddArc(context, 150, 200, 100, 0, 3.14159 * 2, 0)
        //添加一个弧：x,y,半径，起始角度，结束角度，0顺时针或者1逆时针
        CGContextSetLineWidth(context, 10)
        CGContextStrokePath(context)
        
        CGContextAddEllipseInRect(context, CGRect(x: 50, y: 400, width: 200, height: 100))
        CGContextStrokePath(context)
    
    }
    

}
