//
//  UIColorCatagory.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/10/26.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

extension UIImage{
    
   class func image(withColor color: UIColor, size:CGSize) -> UIImage {
        let rect = CGRect(x:0, y:0, width: size.width, height:size.height)
        
        UIGraphicsBeginImageContext(rect.size)
        let contextRef = UIGraphicsGetCurrentContext()
        contextRef!.setFillColor(color.cgColor)
        contextRef!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        return image!
    }
    
}
