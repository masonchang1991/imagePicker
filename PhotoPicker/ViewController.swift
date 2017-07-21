//
//  ViewController.swift
//  PhotoPicker
//
//  Created by Ｍason Chang on 2017/7/21.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit
                                        ///實作選取圖片完後觸發的事件         ///開啟或存取照片時畫面跳轉所用
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var pickerBar: UIView!
    @IBOutlet weak var pickerButton: UIButton!
    @IBOutlet weak var imageContainerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

   
        layout(selectedImage, pickerBar, pickerButton, imageContainerView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pickerButtonAction(_ sender: UIButton) {
        self.getUserPhoto()
    }

       
    
    
}

