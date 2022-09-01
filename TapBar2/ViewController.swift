//
//  ViewController.swift
//  TapBar2
//
//  Created by Davit Hovsepyan on 13.04.22.
//

import UIKit
class CustomTabBar: UITabBar {

    let roundedView = UIView(frame: .zero)

    override func awakeFromNib() {
        super.awakeFromNib()

        roundedView.layer.masksToBounds = true
        roundedView.layer.cornerRadius = 12.0
        roundedView.layer.borderWidth = 2.0
        roundedView.isUserInteractionEnabled = false
        roundedView.layer.borderColor = UIColor.black.cgColor
        self.addSubview(roundedView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let margin: CGFloat = 12.0
        let position = CGPoint(x: margin, y: 0)
        let size = CGSize(width: self.frame.width - margin * 2, height: self.frame.height)
        roundedView.frame = CGRect(origin: position, size: size)
    }
}
