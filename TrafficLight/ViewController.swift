//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей Клименко on 18.08.2021.
//

import UIKit

enum CurrentLamp {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLamp: UIView!
    @IBOutlet weak var yellowLamp: UIView!
    @IBOutlet weak var greenLamp: UIView!
  
    @IBOutlet weak var button: UIButton!
    
    var currentID = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLamp.backgroundColor = .red
        yellowLamp.backgroundColor = .yellow
        greenLamp.backgroundColor = .green
        
        button.setTitle("START", for: .normal)
        
        shotDownLamp()
    }
    
    @IBAction func switchButton(_ sender: UIButton) {
       
    }
   

    
}

