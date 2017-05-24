//
//  PromptViewController.swift
//  PromptMessage
//
//  Created by archimboldi on 22/05/2017.
//  Copyright © 2017 me.archimboldi. All rights reserved.
//

import UIKit

class PromptViewController: UIViewController {
    
    var message: Message
    var promptView: PromptView
    
    init(withMessage message: Message) {
        self.message = message
        self.promptView = PromptView.init(message: self.message)
        super.init(nibName: nil, bundle: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(promptViewDisappearNotification), name: NSNotification.Name(rawValue: "PromptViewDisappearNotification"), object: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        self.view.addSubview(self.promptView)
        viewAppearAnimate(promptView: self.promptView)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func viewAppearAnimate(promptView view: UIView) {
        view.frame.origin.y = view.frame.origin.y + view.frame.size.height + PromptView.BorderMargin * 2
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: [], animations: {
            view.frame.origin.y = view.frame.origin.y - view.frame.size.height - PromptView.BorderMargin * 2
        }, completion: nil)
    }
    
    func promptViewDisappearNotification(_ notification: Notification) {
        let promptWindow = notification.object as? UIWindow?
        viewDisappearAnimate(promptView: self.promptView, promptWindow: promptWindow!)
    }
    
    func viewDisappearAnimate(promptView view: UIView, promptWindow: UIWindow?) {
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: [], animations: {
            view.frame.origin.y = promptWindow?.frame.size.height ?? (view.frame.origin.y + view.frame.size.height + PromptView.BorderMargin * 2)
        }, completion: { finished in
            view.removeFromSuperview()
            promptWindow?.isHidden = true
        })
    }
    
    
    
}
