//
//  ViewController.swift
//  PromptMessageExample
//
//  Created by archimboldi on 23/05/2017.
//  Copyright © 2017 me.archimboldi. All rights reserved.
//

import UIKit
import PromptMessage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapKeyboardButtonAction(_ sender: Any) {
        let message = Message.init(titleText: "This is a bottom prompt message with keyboard.", textColor: UIColor.white, backgroundColor: UIColor.init(red: 0.97, green: 0.73, blue: 0.18, alpha: 1.0))
        let button = sender as! UIButton
        
        let buttonInWindowPoint = self.view.window?.convert(button.frame.origin, from: self.view.window)
        let topY = (buttonInWindowPoint?.y)! + button.frame.size.height
        PromptMessage.customShow(withMessage: message, windowTopY: topY)
    }

    @IBAction func tapOneLineButtonAction(_ sender: Any) {
        let message = Message.init(titleText: "This is a prompt message.", textColor: UIColor.white, backgroundColor: UIColor.init(red: 0.97, green: 0.73, blue: 0.18, alpha: 1.0))
        PromptMessage.show(withMessage: message)
    }
    
    @IBAction func tapBottomButtonAction(_ sender: Any) {
        let message = Message.init(titleText: "This is a bottom prompt message.", textColor: UIColor.white, backgroundColor: UIColor.init(red: 0.97, green: 0.73, blue: 0.18, alpha: 1.0))
        PromptMessage.show(withMessage: message)
    }
}

