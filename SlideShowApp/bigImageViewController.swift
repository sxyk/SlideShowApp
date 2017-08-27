//
//  bigImageViewController.swift
//  SlideShowApp
//
//  Created by 田中優樹 on 2017/08/20.
//  Copyright © 2017年 yuki.tanaka. All rights reserved.
//

import UIKit

class bigImageViewController: UIViewController {

    @IBOutlet var bigImage: UIImageView!
    var name2 :String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image2 = UIImage(named:name2!)
        bigImage.image = image2

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
