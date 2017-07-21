//
//  PinchFunction.swift
//  PhotoPicker
//
//  Created by Ｍason Chang on 2017/7/21.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import Foundation
import UIKit
extension ViewController {

    func draggedView(_ sender:UIPanGestureRecognizer){
        let translation = sender.translation(in: self.view)
        sender.view?.center = CGPoint(x:(sender.view?.center.x)! + translation.x, y:(sender.view?.center.y)! + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.imageContainerView)
    }
    func pinchedView(_ sender:UIPinchGestureRecognizer){
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        //變大後在設為1
        sender.scale = 1.0
    }
}
