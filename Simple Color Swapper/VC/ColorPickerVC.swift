//
//  ColorPickerVC.swift
//  Simple Color Swapper
//
//  Created by Artur on 06/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func colorBtnWasPressed(sender: UIButton)
    {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
            self.navigationController?.popViewController(animated: true)
        }
    }

}
