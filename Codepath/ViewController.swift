//
//  ViewController.swift
//  Codepath
//
//  Created by Abdullahi on 3/14/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBOutlet weak var Switch: UISwitch!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBAction func toggleImage(_ sender: UISwitch) {
    imageVisibility(isSwitchOn: sender.isOn)
    }
    func imageVisibility(isSwitchOn: Bool) {
            if isSwitchOn {
                Image.image = UIImage(systemName: "figure.walk.triangle.fill")
            } else {
                Image.image = nil
            }
        }
    @IBAction func changeBackGroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    func changeColor() -> UIColor{

           let red = CGFloat.random(in: 0...1)
           let green = CGFloat.random(in: 0...1)
           let blue = CGFloat.random(in: 0...1)

           return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
       }
}

