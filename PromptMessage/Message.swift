//
//  Message.swift
//  PromptMessage
//
//  Created by archimboldi on 22/05/2017.
//  Copyright © 2017 me.archimboldi. All rights reserved.
//

import UIKit

public struct Message {
    let titleText: String
    let textColor: UIColor
    let backgroundColor: UIColor
    
    public init(titleText: String, textColor: UIColor, backgroundColor: UIColor) {
        self.titleText = titleText
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }
}
