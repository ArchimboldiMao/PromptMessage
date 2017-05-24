//
//  Showing.swift
//  PromptMessage
//
//  Created by archimboldi on 23/05/2017.
//  Copyright © 2017 me.archimboldi. All rights reserved.
//

import UIKit

public func show(withMessage message: Message) {
    promptMessage.craft(message)
}

public func customShow(withMessage message: Message, windowTopY topY: CGFloat) {
    promptMessage.craft(message, windowTopY: topY)
}
