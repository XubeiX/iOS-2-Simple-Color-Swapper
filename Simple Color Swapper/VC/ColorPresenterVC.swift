//
//  ViewController.swift
//  Simple Color Swapper
//
//  Created by Artur on 06/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let pickerVC = segue.destination as? ColorPickerVC else { return }
            pickerVC.delegate = self
        }
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        self.view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
}

