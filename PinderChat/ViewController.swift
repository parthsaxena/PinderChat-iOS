//
//  ViewController.swift
//  PinderChat
//
//  Created by Parth Saxena on 4/15/16.
//  Copyright © 2016 Parth Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func paintNewMessage() {
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Color Declarations
        let color = UIColor(red: 0.299, green: 0.556, blue: 0.914, alpha: 1.000)
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 28, y: 44, width: 189, height: 22), cornerRadius: 9)
        color.setFill()
        rectanglePath.fill()
        
        
        //// Text Drawing
        let textRect = CGRect(x: 115, y: 44, width: 96, height: 22)
        let textTextContent = NSString(string: "Hey Parth!")
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .Right
        
        let textFontAttributes = [NSFontAttributeName: UIFont(name: ".AppleSystemUIFont", size: 12)!, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]
        
        let textTextHeight: CGFloat = textTextContent.boundingRectWithSize(CGSize(width: textRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect)
        textTextContent.drawInRect(CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

