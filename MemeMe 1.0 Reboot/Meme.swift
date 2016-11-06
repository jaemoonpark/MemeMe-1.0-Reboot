//
//  Meme.swift
//  MemeMe 1.0 Reboot
//
//  Created by Jaemoon Park on 11/5/16.
//
//

import Foundation
import UIKit

struct Meme{
    var strTop: String
    var strBtm: String
    var imageOrig: UIImage
    var imageFinal: UIImage
    init(strTop: String, strBtm: String, imageOrig: UIImage, imageFinal: UIImage){
        self.strTop = strTop
        self.strBtm = strBtm
        self.imageOrig = imageOrig
        self.imageFinal = imageFinal
    }
}
