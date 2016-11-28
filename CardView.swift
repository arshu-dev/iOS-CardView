//
//  CardView.swift
//
//  Created by Arshad Parwez on 25/11/16.
//  Copyright © 2016 Arshad Parwez. All rights reserved.
//

import Foundation

import UIKit

@IBDesignable

class CardView: UIView {
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    
    @IBInspectable var cornerRadius: CGFloat = 2 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        didSet {
            layer.shadowColor = shadowColor?.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float? {
        didSet {
            layer.shadowOpacity = shadowOpacity!
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.5 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    override func layoutSubviews() {
        
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.lightGray.cgColor
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowPath = shadowPath.cgPath
    }
}
