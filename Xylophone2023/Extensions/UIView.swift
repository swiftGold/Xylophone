//
//  UIView.swift
//  Xylophone2023
//
//  Created by Сергей Золотухин on 23.01.2023.
//

import UIKit

extension UIView {
    func myAddSubView(_ view: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { view in
            myAddSubView(view)
        }
    }
}

