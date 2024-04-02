//
//  UIBezierPath+Extension.swift
//  DXCDemo
//
//  Created by Suraj Sagare on 02/04/24.
//

import UIKit

extension UIBezierPath {
    func stroke(withColor: UIColor, lineWidth: CGFloat) {
        self.lineWidth = lineWidth
        let strokeColor = withColor
        strokeColor.setStroke()
        self.stroke()
    }
}
