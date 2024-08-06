//
//  File.swift
//  
//
//  Created by Necati Alperen IŞIK on 6.08.2024.
//

import UIKit


public protocol AppThemeProtocol {
    
    var padding: AppTheme.Padding { get }
    var fonts: AppTheme.Fonts { get }
    var colors: AppTheme.Colors { get }
    var cornerRadius: AppTheme.CornerRadius { get }
}

// Varsayılan implementasyonlar (opsiyonel)
public extension AppThemeProtocol {
    var padding: AppTheme.Padding {
        return AppTheme.Padding(small: 8.0, medium: 16.0, large: 24.0)
    }
    var fonts: AppTheme.Fonts {
        return AppTheme.Fonts(title: UIFont.systemFont(ofSize: 24, weight: .bold),
                                body: UIFont.systemFont(ofSize: 16, weight: .regular),
                                caption: UIFont.systemFont(ofSize: 12, weight: .light))
    }
    var colors: AppTheme.Colors {
        return AppTheme.Colors(primary: UIColor.systemBlue,
                                 secondary: UIColor.systemGray,
                                 background: UIColor.systemBackground,
                                 text: UIColor.label)
    }
    var cornerRadius: AppTheme.CornerRadius {
        return AppTheme.CornerRadius(small: 4.0, medium: 8.0, large: 12.0)
    }
}


public struct AppTheme {
    
    public struct Padding {
        public let small: CGFloat
        public let medium: CGFloat
        public let large: CGFloat
        
        public init(small: CGFloat, medium: CGFloat, large: CGFloat) {
            self.small = small
            self.medium = medium
            self.large = large
        }
    }
    
    public struct Fonts {
        public let title: UIFont
        public let body: UIFont
        public let caption: UIFont
        
        public init(title: UIFont, body: UIFont, caption: UIFont) {
            self.title = title
            self.body = body
            self.caption = caption
        }
    }
    
    public struct Colors {
        public let primary: UIColor
        public let secondary: UIColor
        public let background: UIColor
        public let text: UIColor
        
        public init(primary: UIColor, secondary: UIColor, background: UIColor, text: UIColor) {
            self.primary = primary
            self.secondary = secondary
            self.background = background
            self.text = text
        }
    }
    
    public struct CornerRadius {
        public let small: CGFloat
        public let medium: CGFloat
        public let large: CGFloat
        
        public init(small: CGFloat, medium: CGFloat, large: CGFloat) {
            self.small = small
            self.medium = medium
            self.large = large
        }
    }
}

