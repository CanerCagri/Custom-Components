//
//  CustomComponents.swift
//  Custom Components
//
//  Created by Caner Çağrı on 8.04.2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomComponents : UIView {
    
    @IBInspectable
    var color : UIColor = .orange {
        didSet {
            self.backgroundColor = color
        }
    }
    
    @IBInspectable
    var borderColor : UIColor = .green {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var cornerRadius : CGFloat = 10 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var borderWith : CGFloat = 2 {
        didSet {
            self.layer.borderWidth = borderWith
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func prepareForInterfaceBuilder() {
        configureView()
    }
    
    func configureView() {
        self.backgroundColor = color
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWith
        self.layer.borderColor = borderColor.cgColor
    }
}


