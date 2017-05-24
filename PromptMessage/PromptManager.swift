//
//  PromptManager.swift
//  PromptMessage
//
//  Created by archimboldi on 22/05/2017.
//  Copyright © 2017 me.archimboldi. All rights reserved.
//

import UIKit

let promptMessage: PromptManager = PromptManager()

class PromptManager: NSObject {
    
    var promptWindow: UIWindow
    
    var timer = Timer()
    
    override init() {
        promptWindow = UIWindow.init(frame: CGRect.zero)
        promptWindow.windowLevel = UIWindowLevelAlert
        promptWindow.makeKeyAndVisible()
        super.init()
    }
    
    deinit {
        timer.invalidate()
    }
    
    func craft(_ message: Message) {
        setupTimer()
        let viewController = PromptViewController.init(withMessage: message)
        self.promptWindow.isHidden = false
        self.promptWindow.frame = CGRect.init(x: 0, y: UIScreen.main.bounds.size.height - viewController.view.subviews[0].frame.size.height - PromptView.BorderMargin, width: UIScreen.main.bounds.size.width, height: viewController.view.subviews[0].frame.size.height + PromptView.BorderMargin)
        promptWindow.rootViewController = viewController
    }
    
    func craft(_ message: Message, windowTopY topY: CGFloat) {
        setupTimer()
        let viewController = PromptViewController.init(withMessage: message)
        self.promptWindow.isHidden = false
        self.promptWindow.frame = CGRect.init(x: 0, y: topY, width: UIScreen.main.bounds.size.width, height: viewController.view.subviews[0].frame.size.height + PromptView.BorderMargin)
        promptWindow.rootViewController = viewController
    }
    
    func setupTimer() {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(PromptManager.disappearWindow(_:)), userInfo: nil, repeats: false)
    }
    
    func disappearWindow(_ timer: Timer) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "PromptViewDisappearNotification"), object: self.promptWindow)
    }
}
