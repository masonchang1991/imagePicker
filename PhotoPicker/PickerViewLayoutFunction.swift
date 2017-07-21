//
//  PickerViewLayoutFunction.swift
//  PhotoPicker
//
//  Created by Ｍason Chang on 2017/7/21.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import Foundation
import UIKit


func layout(_ selectedImage: UIImageView, _ pickerBar: UIView, _ pickerButton: UIButton, _ imageContainerView: UIView) {
    
    selectedImage.image = UIImage(named: "icon-photo")
    // self.selectedImage.contentMode = .scaleAspectFill
    selectedImage.tintColor = UIColor.white
    imageContainerView.backgroundColor = UIColor.black
    
    //更改picker bar背景顏色
    pickerBar.backgroundColor = UIColor(red: 249.0/255.0, green: 223.0/255.0, blue: 23.0/255.0, alpha: 1.0)
    pickerBar.layer.shadowOffset = CGSize(width: 0, height: 0)
    pickerBar.layer.shadowOpacity = 1
    pickerBar.layer.shadowRadius = 10
    pickerBar.layer.shadowColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.5).cgColor
    
    
    //更改picker button背景顏色
    pickerButton.backgroundColor = UIColor.black
    pickerButton.layer.shadowOffset = CGSize(width: 0, height: 2)
    pickerButton.layer.shadowOpacity = 1
    pickerButton.layer.shadowRadius = 4
    pickerButton.layer.shadowColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.25).cgColor
    
    //更改picker button title顏色
    pickerButton.setTitle("Pick an Image", for: .normal)
    pickerButton.setTitleColor(UIColor.white, for: .normal)
    pickerButton.titleLabel?.textAlignment = .left
    pickerButton.titleLabel?.font = UIFont.asiTextStyle23Font()
    pickerButton.titleLabel?.addCharactersSpacing(spacing: 0.0, text: "Pick an Image")

}
