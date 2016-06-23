//
//  ViewController.swift
//  Easy Authen
//
//  Created by iMac_08 on 6/23/2559 BE.
//  Copyright © 2559 Natthaphet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var PassworkTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginButton(sender: AnyObject) {
        
        let user = userTextField.text
        let password = PassworkTextField.text
        
        print("user ==> \(user)")
        print("passwprd ==> \(password)")
        
        checkSpace(user!, strPass: password!)
        
        
        
    }
    
    func checkSpace(strUser:String, strPass:String) -> Void {
        if ((strUser.isEmpty)||(strPass.isEmpty)) {
            print("Have Space")
            
            
            let myAlert = UIAlertController(title: "มีช่องว่าง"
                , message: "กรุณากรอกทุกช่องคะ"
                , preferredStyle: UIAlertControllerStyle.Alert)
            
            myAlert.addAction(UIAlertAction(title: "OK",
                style: UIAlertActionStyle.Default
                , handler: nil))
            
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }else{
        
            var trueUser = ["test1", "test2", "test3"]
            var truePass = ["123","456","789"]
            var index = 0
            var status = false
            var myTruePass = ""
            
            
            
            for myfor in trueUser {
                if (strUser == myfor) {
                   status = true
                    myTruePass = truePass[index]
                }//if
                
                index += 1
                
                
            }//for
            
            
            if status {
                if (strPass == myTruePass) {
                    
                    print("Welcome")
                    
                }else{
                    
                    myAlertDialog("password False", steMessage: "Please Try Again Password False")
                    
                }
                
            }else{
            
                myAlertDialog("ไม่มี User นี้", steMessage: "ไม่มี User ในฐานข้อมูลของเรา")
            
            }
            
        
        }//if
        
        
        
        
        
    }
    func myAlertDialog(strTitle:String, steMessage:String) -> Void {
        let myAlert = UIAlertController(title: strTitle, message: steMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    
    
    
    
}

