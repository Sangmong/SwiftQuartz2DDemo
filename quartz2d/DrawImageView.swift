//
//  DrawImageView.swift
//  quartz2d
//
//  Created by 刘威 on 15/10/22.
//  Copyright © 2015年 EGG. All rights reserved.
//

import UIKit

class DrawImageView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        uiImage = UIImage(named: "23.jpg")?.CGImage
    }
    
    var uiImage:CGImageRef?
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSaveGState(context) //调整前保存状态
        CGContextTranslateCTM(context, 10, 400)
        CGContextScaleCTM(context, 1, -1)// Y轴缩放为-1，默认是反的
        
        CGContextDrawImage(context, CGRect(x: 0, y: 0, width: 200, height: 200), uiImage)
        
        CGContextRestoreGState(context)//调整后恢复状态
        
        
        
    }


}
