//
//  PickerFunction.swift
//  PhotoPicker
//
//  Created by Ｍason Chang on 2017/7/21.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    func getUserPhoto() {
        let picker: UIImagePickerController = UIImagePickerController()
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            picker.allowsEditing = true
            picker.delegate = self
            self.present(picker, animated: true, completion: nil)
            
            
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        
        picker.dismiss(animated: true, completion: nil) //關掉相簿
        self.selectedImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage //將選取圖片存入我那個imageview中
        
        if let image = self.selectedImage.image {
            //拿照片比例啦
            let ratio = image.size.width / image.size.height
            let newWidth = self.imageContainerView.frame.height * ratio
            
            //set照片長寬
            self.selectedImage.frame.size = CGSize(width: newWidth - 120 * ratio, height: self.imageContainerView.frame.height - 120)
            //set照片中心
            self.selectedImage.center = CGPoint(x: self.imageContainerView.frame.width * 0.5, y: self.imageContainerView.frame.height * 0.5)
            //放照片啦
            self.selectedImage.image = image
            
        }
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        picker.dismiss(animated: true, completion: nil)
    }
}
