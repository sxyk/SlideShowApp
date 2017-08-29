//
//  ViewController.swift
//  SlideShowApp
//
//  Created by 田中優樹 on 2017/08/20.
//  Copyright © 2017年 yuki.tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer :Timer!
    
    @IBOutlet var SlideShowButton: UIButton!
    
    @IBAction func slideShow(_ sender: Any) {
        if timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(imageNext(_:)), userInfo: nil, repeats: true)
            imageNextO.isEnabled = false
            imagePrevO.isEnabled = false
            SlideShowButton.setTitle("停止", for: .normal)
        } else {
            self.timer.invalidate()
            self.timer = nil
            imageNextO.isEnabled = true
            imagePrevO.isEnabled = true
            SlideShowButton.setTitle("再生", for: .normal)
        }
    }
    
    var timer_sec: Float = 0
    
    @IBOutlet var imageview: UIImageView!
    
    @IBAction func biggerImage(_ sender: Any) {
        print("test")
    }
    
    @IBAction func imageNext(_ sender: Any) {
        let imageCount = imageNameArray.count - 1
        if dispImageNo == imageCount {
            dispImageNo = 0
        } else {
            dispImageNo += 1
        }
        disprayImage()
    }
    
    @IBOutlet var imageNextO: UIButton!
    
    @IBAction func imageprev(_ sender: Any) {
        let imageCount = imageNameArray.count - 1
        if dispImageNo == 0 {
            dispImageNo = imageCount
        } else {
            dispImageNo -= 1
        }
        disprayImage()
    }
    @IBOutlet var imagePrevO: UIButton!
    
    var dispImageNo = 0
    
    let imageNameArray = [
        "nozomin.jpg",
        "nanataso.jpg",
        "hirozaile.jpg",
        ]
    
    func disprayImage() {
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        imageview.image = image
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image1 = UIImage(named: "nozomin.jpg")
        imageview.image = image1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name1 = imageNameArray[dispImageNo]
        let bigImageViewController = segue.destination as! bigImageViewController
        bigImageViewController.name2 = name1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
    
}

