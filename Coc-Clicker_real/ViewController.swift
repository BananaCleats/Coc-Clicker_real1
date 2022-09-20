//
//  ViewController.swift
//  Coc-Clicker_real
//
//  Created by Matthew Iniguez on 9/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    let image = UIImage(named: "BarbKing")
    
    
    
    @IBOutlet weak var button: UIButton!
    
    
    
    @IBOutlet weak var Clicker: UILabel!
    
    var Doug:Int = 0
    var shopbought = false
    var timer: Timer?
    var shop:Int = 0
    
    let imageView = UIImageView(frame: CGRect(x: -65, y: -40, width: 350, height: 350))
    
    
    @IBOutlet weak var cpscounter: UILabel!
    
    
    
    

    func Cps () {
        
        self.timer =
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            
            timer in self.Doug += 1
            
            self.Clicker.text = "Total Clicks:  \(self.Doug)"
            
        }
    }
    func Arch () {
        
        self.timer =
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            
            timer in self.Doug += 100
            
            self.Clicker.text = "Total Clicks:  \(self.Doug)"
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = image
        
        button.addSubview(imageView)
        
        
        
        
    }
//    func Cps () {
//
//        self.timer =
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
//
//            timer in self.Doug += 1
//
//            self.Clicker.text = "Total Clicks:  \(self.Doug)"
//
//    }
//    func Arch () {
//
//        self.timer =
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
//
//            timer in self.Doug += 100
//
//            self.Clicker.text = "Total Clicks:  \(self.Doug)"
//
//        }
//
//    }
       @IBAction func ButtonClicker(_ sender: Any) {
            Doug += 1
            Clicker.text = "Total Clicks: \(Doug)"
            if Doug > 99
            { Doug += 1}
            
            if Doug > 249
            { Doug += 2}
            
            
            
        }
        
        
        
        
        
        @IBAction func generator(_ sender: Any) {
            
            if Doug > 9{
                Doug -= 9
                shop += 1
                cpscounter.text = "Cps: \(shop)"
                // if shopbought == false{
                Cps()//}
                // shopbought = true
                
            }
            
            
        }
        
        
       @IBAction func Generate(_ sender: Any) {
            
            if Doug > 99{
                Doug -= 99
                shop += 100
                cpscounter.text = "Cps: \(shop)"
                //  if shopbought == false{
                Arch()//}
                // shopbought = true
                
            }
            
            
            
            
        }
        
        
        
        
    }

