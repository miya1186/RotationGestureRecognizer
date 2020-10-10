//
//  ViewController.swift
//  RotationGestureRecognizer
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    var lastRotetion:CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func rotateImage(_ sender: UIRotationGestureRecognizer) {
        
        switch sender.state{
        case .began:
            //前回の回転角度から始める
            sender.rotation = lastRotetion
        case .changed:
            //回転角度に画像を合わせる
            image.transform = CGAffineTransform(rotationAngle: sender.rotation)
        case .ended:
            //回転終了時の回転角度を保存する
            lastRotetion = sender.rotation
        default :
            break
        }
    }
    
}

