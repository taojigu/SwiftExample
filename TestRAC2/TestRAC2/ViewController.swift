//
//  ViewController.swift
//  TestRAC2
//
//  Created by gus on 16/4/15.
//  Copyright © 2016年 gu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var  textField:UITextField?;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textFiledSignal2();
        
       
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFiledSignal2()->Void
    {
    

        self.textField?.rac_textSignal().map({ (objc) -> AnyObject! in
            print("map \(objc)");
            return objc;
        })
        
        self.textField?.rac_textSignal().subscribeNext({ (objc) in
            print("suscribe next \(objc)");
        });
       

        
    }
    

    



}

