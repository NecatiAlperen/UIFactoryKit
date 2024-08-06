//
//  File.swift
//  
//
//  Created by Necati Alperen IŞIK on 6.08.2024.
//

import UIKit


public struct AppThemeTemplate {
    public struct Padding {
        public var small: CGFloat
        public var medium: CGFloat
        public var large: CGFloat
        
        
        public init(small: CGFloat, medium: CGFloat, large: CGFloat) {
            self.small = small
            self.medium = medium
            self.large = large
        }
    }

    public struct Fonts {
        public var title: UIFont
        public var body: UIFont
        public var caption: UIFont
        
        
        public init(title: UIFont, body: UIFont, caption: UIFont) {
            self.title = title
            self.body = body
            self.caption = caption
        }
    }

    public struct Colors {
        public var primary: UIColor
        public var secondary: UIColor
        public var background: UIColor
        public var text: UIColor
        
        
        public init(primary: UIColor, secondary: UIColor, background: UIColor, text: UIColor) {
            self.primary = primary
            self.secondary = secondary
            self.background = background
            self.text = text
        }
    }

    public struct CornerRadius {
        public var small: CGFloat
        public var medium: CGFloat
        public var large: CGFloat
        
        
        public init(small: CGFloat, medium: CGFloat, large: CGFloat) {
            self.small = small
            self.medium = medium
            self.large = large
        }
    }

    public var padding: Padding
    public var fonts: Fonts
    public var colors: Colors
    public var cornerRadius: CornerRadius

    
    public init(padding: Padding, fonts: Fonts, colors: Colors, cornerRadius: CornerRadius) {
        self.padding = padding
        self.fonts = fonts
        self.colors = colors
        self.cornerRadius = cornerRadius
    }
    
    
    public static func createAppTheme() -> AppThemeTemplate {
        return AppThemeTemplate(
            padding: Padding(small: 10.0, medium: 20.0, large: 30.0),
            fonts: Fonts(
                title: UIFont.systemFont(ofSize: 24, weight: .bold),
                body: UIFont.systemFont(ofSize: 16, weight: .regular),
                caption: UIFont.systemFont(ofSize: 12, weight: .light)
            ),
            colors: Colors(
                primary: UIColor.systemBlue,
                secondary: UIColor.systemGray,
                background: UIColor.systemBackground,
                text: UIColor.label
            ),
            cornerRadius: CornerRadius(small: 4.0, medium: 8.0, large: 12.0)
        )
    }
}

