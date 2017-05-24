//
//  PromptView.swift
//  PromptMessage
//
//  Created by archimboldi on 22/05/2017.
//  Copyright © 2017 me.archimboldi. All rights reserved.
//

import UIKit

class PromptView: UILabel {
    
    static let BorderMargin: CGFloat = 16.0
    
    init(message: Message) {
        super.init(frame: CGRect.zero)
        let paragraph = NSMutableParagraphStyle.init();
        paragraph.lineBreakMode = NSLineBreakMode.byWordWrapping;
        paragraph.alignment = NSTextAlignment.left;
        self.attributedText = NSAttributedString.init(string: message.titleText, attributes: [
            NSForegroundColorAttributeName: message.textColor,
            NSFontAttributeName: UIFont.boldSystemFont(ofSize: 19.0),
            NSParagraphStyleAttributeName: paragraph
            ])
        self.backgroundColor = message.backgroundColor
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.clipsToBounds = true
        setupFrames()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsetsMake(0, PromptView.BorderMargin * 2, 0, PromptView.BorderMargin * 2)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
}

extension PromptView {
    func setupFrames() {
        let labelWidth = UIScreen.main.bounds.width - PromptView.BorderMargin * 2
        let titleTextSize = self.attributedText?.size()
        let labelHeight = (titleTextSize?.height)! * ceil((titleTextSize?.width)! / (labelWidth - PromptView.BorderMargin * 2 * 2)) + PromptView.BorderMargin
        self.layer.cornerRadius = labelHeight / 2
        
        self.frame = CGRect.init(x: PromptView.BorderMargin, y: PromptView.BorderMargin / 2, width: labelWidth, height: ceil(labelHeight))
        if (titleTextSize?.width)! < labelWidth - PromptView.BorderMargin * 2 * 2 {
            self.textAlignment = .center
        } else {
            self.textAlignment = .left
        }
    }
}
