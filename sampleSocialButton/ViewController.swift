//
//  ViewController.swift
//  sampleSocialButton
//
//  Created by RIho OKubo on 2016/05/03.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit
import Social//使うときだけimport

class ViewController: UIViewController {

    @IBOutlet weak var facebookBtn: UIButton!
    @IBOutlet weak var twitterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapTwitterBtn(sender: UIButton) {
        //print("おされたよ")
        var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter);twitterVC.setInitialText("つぶやくよ")//初期値設定
            presentViewController(twitterVC, animated: true, completion: nil)
            //presentViewControllerはグレーのバックグランドでアラート画面のようなものが出る
        //TODO:
        
        
    }
    @IBAction func tapFbBtn(sender: UIButton) {
        
        var facebookVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        facebookVC.setInitialText("投稿して！")
            presentViewController(facebookVC,animated: true, completion: nil )
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

