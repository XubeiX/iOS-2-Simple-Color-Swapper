//
//  ColorTransferDelegate.swift
//  Simple Color Swapper
//
//  Created by Artur on 06/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
