//
//  RoundedCornerButton.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 12/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornerButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
