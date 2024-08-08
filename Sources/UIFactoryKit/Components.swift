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
    
    public static func createButton(title: String, titleColor : UIColor, bgColor: UIColor, font: UIFont,cornerRadius: CGFloat = 0,image: UIImage) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = bgColor
        button.layer.cornerRadius = cornerRadius
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    public static func createImageView(image:UIImage,bgColor: UIColor,cornerRadius: CGFloat = 0,tintColor:UIColor) ->UIImageView {
        let view = UIImageView()
        view.image = image
        view.tintColor = tintColor
        view.layer.cornerRadius = cornerRadius
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    
    public static func createTextField(placeholder: String, textColor: UIColor, font: UIFont, bgColor: UIColor, cornerRadius: CGFloat = 0, delegate: UITextFieldDelegate? = nil) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.textColor = textColor
        textField.font = font
        textField.backgroundColor = bgColor
        textField.layer.cornerRadius = cornerRadius
        textField.layer.masksToBounds = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = delegate
        return textField
    }
    
    public static func createSecureTextField(placeholder: String, textColor: UIColor, font: UIFont, bgColor: UIColor, cornerRadius: CGFloat = 0, delegate: UITextFieldDelegate? = nil) -> UITextField {
           let textField = UITextField()
           textField.placeholder = placeholder
           textField.textColor = textColor
           textField.font = font
           textField.backgroundColor = bgColor
           textField.layer.cornerRadius = cornerRadius
           textField.layer.masksToBounds = true
           textField.translatesAutoresizingMaskIntoConstraints = false
           textField.isSecureTextEntry = true
           textField.delegate = delegate
           
           let showHideButton = UIButton(type: .custom)
           showHideButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
           showHideButton.tintColor = .gray
           showHideButton.addTarget(self, action: #selector(toggleSecureEntry(_:)), for: .touchUpInside)
           
           textField.rightView = showHideButton
           textField.rightViewMode = .always
           
           return textField
       }
       
    @objc private static func toggleSecureEntry(_ sender: UIButton) {
        
        guard let textField = sender.superview as? UITextField else { return }
        textField.isSecureTextEntry.toggle()
        let eyeImageName = textField.isSecureTextEntry ? "eye.slash.fill" : "eye.fill"
        sender.setImage(UIImage(systemName: eyeImageName), for: .normal)
    }
    
    
    public static func createSearchBar(placeholder: String, tintColor: UIColor, barStyle: UIBarStyle = .default, delegate: UISearchBarDelegate? = nil) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = placeholder
        searchBar.tintColor = tintColor
        searchBar.barStyle = barStyle
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.delegate = delegate
        return searchBar
    }
    
    
    // table view
    // collection view
    
    public static func createStackView(
           axis: NSLayoutConstraint.Axis,
           arrangedSubviews: [UIView],
           spacing: CGFloat,
           alignment: UIStackView.Alignment,
           distribution: UIStackView.Distribution,
           bgColor: UIColor,
           cornerRadius: CGFloat
       ) -> UIStackView {
           let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
           stackView.axis = axis
           stackView.spacing = spacing
           stackView.alignment = alignment
           stackView.distribution = distribution
           stackView.backgroundColor = bgColor
           stackView.layer.cornerRadius = cornerRadius
           stackView.layer.masksToBounds = true
           stackView.translatesAutoresizingMaskIntoConstraints = false
           
           return stackView
       }
    
    
    
    public static func createTableView(
            frame: CGRect = .zero,
            style: UITableView.Style = .plain,
            delegate: UITableViewDelegate?,
            dataSource: UITableViewDataSource?,
            separatorStyle: UITableViewCell.SeparatorStyle = .singleLine,
            showsVerticalScrollIndicator: Bool = false,
            showsHorizontalScrollIndicator: Bool = false,
            backgroundColor: UIColor = .white,
            allowsSelection: Bool = true,
            allowsMultipleSelection: Bool = false,
            cornerRadius: CGFloat = 0
        ) -> UITableView {
            let tableView = UITableView(frame: frame, style: style)
            tableView.delegate = delegate
            tableView.dataSource = dataSource
            tableView.separatorStyle = separatorStyle
            tableView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
            tableView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
            tableView.backgroundColor = backgroundColor
            tableView.allowsSelection = allowsSelection
            tableView.allowsMultipleSelection = allowsMultipleSelection
            tableView.layer.cornerRadius = cornerRadius
            tableView.translatesAutoresizingMaskIntoConstraints = false
            
            return tableView
        }
    
    
}


