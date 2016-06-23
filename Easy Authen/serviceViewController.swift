//
//  serviceViewController.swift
//  Easy Authen
//
//  Created by iMac_08 on 6/23/2559 BE.
//  Copyright © 2559 Natthaphet. All rights reserved.
//

import UIKit

class serviceViewController: UIViewController {
    
    
    @IBOutlet weak var ishiharaImageView: UIImageView!
    
    @IBOutlet weak var AnswerTextField: UITextField!
    
    var myIndex = 0
    
    var score = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }//viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//didReceiveMemoryWarning
    
    
    @IBAction func AnswerButton(sender: AnyObject) {
        
        let strAnswer = AnswerTextField.text
        
        print("strAnser ==> \(strAnswer)")
        
        var myImage = ["ishihara_01.png","ishihara_02.png",
                       "ishihara_03.png","ishihara_04.png",
                       "ishihara_05.png","ishihara_06.png",
                       "ishihara_07.png","ishihara_08.png",
                       "ishihara_09.png","ishihara_10.png",]
        var myTrueAnswer = [3,5,6,12,29,45,74,42,0,0]
        
        if (myIndex > 9) {
            myIndex += 1
        }else{
            myIndex = 0
        }
        
        let intAnswer = Int(strAnswer!)
        print()
            
            
        
        
        ishiharaImageView.image = UIImage(named: myImage[myIndex])
        
    }//AnswerButton
    
}// Main Class





