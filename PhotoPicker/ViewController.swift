//
//  ViewController.swift
//  PhotoPicker
//
//  Created by Ｍason Chang on 2017/7/21.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit
                                        ///實作選取圖片完後觸發的事件         ///開啟或存取照片時畫面跳轉所用
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var pickerBar: UIView!
    @IBOutlet weak var pickerButton: UIButton!
    @IBOutlet weak var imageContainerView: UIView!
    
    var fullSize: CGSize!
    var pinchRecognizer = UIPinchGestureRecognizer()
    var panRecognizer = UIPanGestureRecognizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fullSize = imageContainerView.bounds.size
        layout(selectedImage, pickerBar, pickerButton, imageContainerView)
        panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.draggedView(_:)))
        panRecognizer.delegate = self
        
        
        
        pinchRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchedView(_:)))
        
        self.pinchRecognizer.delegate = self
        self.selectedImage.addGestureRecognizer(pinchRecognizer)
        self.selectedImage.isUserInteractionEnabled = true
        self.selectedImage.isMultipleTouchEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pickerButtonAction(_ sender: UIButton) {
        self.getUserPhoto()
    }
    

}

