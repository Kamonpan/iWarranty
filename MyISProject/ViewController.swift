//
//  ViewController.swift
//  MyISProject
//
//  Created by Kamonpan Ketlue on 7/9/2560 BE.
//  Copyright © 2560 Kamonpan Ketlue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var EmailTxt: UITextField!
    @IBOutlet weak var PasswordTxt: UITextField!
    @IBOutlet weak var UsernameLbl: UILabel!
    @IBOutlet weak var LogoImg: UIImageView!
    @IBOutlet weak var PasswordLbl: UILabel!
    @IBOutlet weak var RegisBtn: UIButton!
    @IBOutlet weak var LoginBtn: UIButton!
    
    //hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
//เงื่อนไขการ login
    @IBAction func Login(_sender: Any) {
        let Username:String  = "111111"
        let Password:String  = "111111"
        
        // กรอกถูกต้อง
        
        if (EmailTxt.text?.characters.count)! < 6 {
            EmailTxt.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0)
            AlertHelper.showAlert(title: "Error", message: "Email ต้องมากกว่า 6 ตัวอักษร", viewController: self)
            return
        } else {
            let GotoAddWarrantyTabbar = self.storyboard!.instantiateViewController(withIdentifier: "GotoAddWarrantyTabbar")
            
            let appDelegate = UIApplication.shared.delegate! as! AppDelegate
            
            appDelegate.window?.rootViewController = GotoAddWarrantyTabbar
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        เรียกใช้การหุบ keyboard
       EmailTxt.delegate = self
        PasswordTxt.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y-140, width: self.view.frame.size.width, height: self.view.frame.size.height)
        })
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y+140, width: self.view.frame.size.width, height: self.view.frame.size.height)
        })
    }
}

