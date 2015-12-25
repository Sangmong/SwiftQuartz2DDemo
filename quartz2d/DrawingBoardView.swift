//
//  DrawingBoardView.swift
//  quartz2d
//
//  Created by 刘威 on 15/10/22.
//  Copyright © 2015年 EGG. All rights reserved.
//

import UIKit

class DrawingBoardView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var path = CGPathCreateMutable()
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let p:CGPoint = (touches.first?.locationInView(self))!
        CGPathMoveToPoint(path, nil, p.x, p.y)

    }
    
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let p:CGPoint = (touches.first?.locationInView(self))!
        CGPathAddLineToPoint(path, nil, p.x, p.y)
        setNeedsDisplay()
        
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        
//        let path = CGPathCreateMutable()  //创建路径
//        CGPathMoveToPoint(path, nil, 100, 100)
//        CGPathAddLineToPoint(path, nil, 200, 200)
        CGContextAddPath(context, path)
        CGContextStrokePath(context)
    }
    

}
