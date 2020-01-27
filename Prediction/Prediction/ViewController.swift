//
//  ViewController.swift
//  Prediction
//
//  Created by Mac on 27.01.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

 @available(iOS 13.0, *)
class ViewController: UIViewController {

    let idCell = "myCell"
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var everydaynik: UIButton! // 11
    @IBOutlet weak var pastulats: UIButton! // 12
    @IBOutlet weak var lifeBook: UIButton! // 13
    @IBOutlet weak var tasks: UIButton!  // 21
    @IBOutlet weak var relaxator: UIButton!  // 22
    @IBOutlet weak var schemator: UIButton! // 23
    
    
    @IBOutlet weak var red_line_2: UILabel!
    @IBOutlet weak var red_line_1: UILabel!
      var timer = Timer()
    
    var objectO: HW = HW()
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        table_design()
    timerStart()
        addDesign()
        
        addSub()
        // Do any additional setup after loading the view.
        
    }

    
    func table_design(){
        
        tableView.layer.borderWidth = 1
        tableView.layer.cornerRadius = 15
        
        //tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 500
        
        tableView.dataSource = self
        //tableView.delegate = self as? UITableViewDelegate
    }
    
    func addRow(text:String) -> UITableViewCell {

        let cell:UITableViewCell = UITableViewCell()

        // note that indexPath.section is used rather than indexPath.row
        cell.textLabel?.text = text

        // add border and color
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true

        return cell
    }
    
    func timerStart(){
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(movingLine1), userInfo: nil, repeats: true)
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(movingLine2), userInfo: nil, repeats: true)
    }
    
    var xPosition = 0
         var swapSides = false
    
    var xPosition1 = 0
            var swapSides1 = false
    
    @objc func movingLine1(){
        
     
        
        if swapSides == false{
        red_line_1.transform = CGAffineTransform(translationX: CGFloat(xPosition), y: CGFloat(0))
             
        
            if(xPosition > 70){
                
                swapSides = true
                
            }
        xPosition += 1
       
        } else {
             red_line_1.transform = CGAffineTransform(translationX: CGFloat(xPosition), y: CGFloat(0))
                     
                       if(xPosition < -70){
                           
                           swapSides = false
                           
                       }
                   xPosition -= 1
        }
        
        
        
    }
    
    @objc func movingLine2(){
           
           if swapSides == false{
    
            red_line_2.transform = CGAffineTransform(translationX: CGFloat(xPosition1), y: CGFloat(0))
                                   
                                     if(xPosition1 < -70){
                                         
                                         swapSides1 = true
                                         
                                     }
                                 xPosition1 -= 1
           } else {
               
            red_line_2.transform = CGAffineTransform(translationX: CGFloat(xPosition1), y: CGFloat(0))
                           
                      
                          if(xPosition1 > 70){
                              
                              swapSides1 = false
                              
                          }
                      xPosition1 += 1
           }
           
           
           
       }
    
    
   
    func addDesign(){
        
        let border_color = UIColor.white
        let border_radius = CGFloat(7)
        let border_width = CGFloat(1)
        let back_color = UIColor.init(white: 0.3, alpha: 0.5)
        
        everydaynik.layer.backgroundColor = back_color.cgColor ;
        everydaynik.layer.borderColor = border_color.cgColor ;
        everydaynik.layer.borderWidth = border_width
        everydaynik.layer.cornerRadius = border_radius
        
        
        tasks.layer.backgroundColor = back_color.cgColor ;
        tasks.layer.borderColor = border_color.cgColor ;
        tasks.layer.borderWidth = border_width
              tasks.layer.cornerRadius = border_radius
        
        
        pastulats.layer.backgroundColor = back_color.cgColor ;
        pastulats.layer.borderColor = border_color.cgColor;    pastulats.layer.borderWidth = border_width
              pastulats.layer.cornerRadius = border_radius
        
        
        lifeBook.layer.backgroundColor = back_color.cgColor ;
        lifeBook.layer.borderColor = border_color.cgColor ;
        lifeBook.layer.borderWidth = border_width
              lifeBook.layer.cornerRadius = border_radius
       
        
        relaxator.layer.backgroundColor = back_color.cgColor ;
        relaxator.layer.borderColor = border_color.cgColor ;     relaxator.layer.borderWidth = border_width
              relaxator.layer.cornerRadius = border_radius
        
        
        schemator.layer.backgroundColor = back_color.cgColor ;
        schemator.layer.borderColor = border_color.cgColor  ;     schemator.layer.borderWidth = border_width
              schemator.layer.cornerRadius = border_radius
    }
    
    func addSub(){
        //objectO = UITextField(frame: CGRect(x: 185, y: 300, width: 120, height: 30)) as! HW
        
    //    objectO.getHello()
       
        
    //    view.addSubview(objectO)
        
       
    }
    
    

}

class HW: UITextField{

    var hello:String = "Hello world"
    
    
    func getHello(){
        
        frame = CGRect(x: 155, y: 300, width: 80, height: 30)
               
               
               text = hello
               backgroundColor = .green
               
               
    
    }

    
    
    
}

@available(iOS 13.0, *)
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
        
        
        cell.textLabel?.text = "lol"
        
        return cell
    }
     
  /*  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
  */
    
    
}
