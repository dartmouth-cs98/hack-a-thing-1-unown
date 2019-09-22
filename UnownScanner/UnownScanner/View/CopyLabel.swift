//
//  CopyLabel.swift
//  UnownScanner
//
//  Created by Lkiron on 9/21/19.
//  Copyright © 2019 Qirong Li. All rights reserved.
//
// TODO: add copy label logic

import UIKit

class CopyLabel: UILabel {
    
    override public var canBecomeFirstResponder: Bool {
        return true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @objc func showMenu() {
        
    }
}
