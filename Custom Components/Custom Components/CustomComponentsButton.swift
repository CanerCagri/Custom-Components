//
//  CustomComponentsButton.swift
//  Custom Components
//
//  Created by Caner Çağrı on 9.04.2022.
//

import Foundation
import UIKit

@IBDesignable
class customButtonComponents : UIButton {
    
    @IBInspectable
    var color : UIColor = .blue {
        didSet {
            self.backgroundColor = color
        }
    }
    
    @IBInspectable
    var borderWith : CGFloat = 5 {
        didSet {
            self.layer.borderWidth = borderWith
        }
    }
    
    @IBInspectable
    var cornerRadius : CGFloat = 3 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var borderColor : UIColor = .orange {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override  func prepareForInterfaceBuilder() {
        configureView()
    }
    
    func configureView() {
        self.backgroundColor = color
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWith
        self.layer.borderColor = borderColor.cgColor
    }
    
    
    
}
