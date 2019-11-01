//
//  ViewController.swift
//  image_app
//
//  Created by english on 2019-10-30.
//  Copyright © 2019 ajax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isRealFc  = true;
    @objc func change_logo(){
        if isRealFc == true {
            imageView.image = UIImage(named:"real_fc_logo")
            isRealFc = false
        }else{
            imageView.image = UIImage(named:"psg_logo")
            isRealFc = true;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    imageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action:#selector(change_logo) )
        imageView.addGestureRecognizer(gesture)
    }

    
    @IBOutlet weak var imageView: UIImageView!
}

