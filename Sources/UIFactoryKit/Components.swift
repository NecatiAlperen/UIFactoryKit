//
//  File.swift
//
//
//  Created by Necati Alperen IŞIK on 6.08.2024.
//

import UIKit

public class ComponentsFactory {
    
    public static func createLabel(text: String, textColor: UIColor, bgColor: UIColor, font: UIFont,cornerRadius: CGFloat = 0) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = bgColor
        label.layer.cornerRadius = cornerRadius
        label.layer.masksToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }
    
    
}
