//
//  OutlineClass.swift
//  DOCScreenV2
//
//  Created by Nik on 2017-10-05.
//  Copyright © 2017 Nik. All rights reserved.
//

import UIKit

class UIOutlinedLabel: UILabel {
    
    var outlineWidth: CGFloat = 1
    var outlineColor: UIColor = UIColor.white
    

    
    override func drawText(in rect: CGRect) {
        
        let strokeTextAttributes = [
            NSStrokeColorAttributeName : outlineColor,
            NSStrokeWidthAttributeName : -1 * outlineWidth,
            ] as [String : Any]
        
        self.attributedText = NSAttributedString(string: self.text ?? "", attributes: strokeTextAttributes)
        super.drawText(in: rect)
    }
}
