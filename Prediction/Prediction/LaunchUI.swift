//
//  ViewController.swift
//  Prediction
//
//  Created by Mac on 27.01.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class LaunchUI: UIViewController {

    
    
    var objectO: HW1 = HW1()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
        
    }

    func addSub(){
        objectO = UITextField(frame: CGRect(x: 185, y: 300, width: 120, height: 30)) as! HW1
        
        view.addSubview(objectO)
    }
    
    

}

class HW1: UITextField{

    var hello:String = "Hello world"
    
    func `init`(){
    
        
        text = hello
        
        
        
    }
    
    
    func getHello(){
        
    
    }

    
    
    
}

