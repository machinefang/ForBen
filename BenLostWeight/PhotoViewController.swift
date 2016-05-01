//
//  PhotoViewController.swift
//  BenLostWeight
//
//  Created by LiuDongxu on 5/1/16.
//  Copyright © 2016 Xin Fang. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func save(sender: AnyObject) {
        guard let imageTosave = image else{
            return
        
        }
        UIImageWriteToSavedPhotosAlbum(imageTosave, nil, nil, nil)
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}
