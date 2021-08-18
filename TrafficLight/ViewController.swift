//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей Клименко on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLamp: UIView!
    @IBOutlet weak var yellowLamp: UIView!
    @IBOutlet weak var greenLamp: UIView!
    @IBOutlet var lamps: [UIView]!
    
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
        shotDownLamp()
        
        lamps[currentID].alpha = 1
        button.setTitle("NEXT", for: .normal)
        
        
        if currentID > 0 {
            currentID -= 1
        } else {
            currentID = 2
        }
    }
    
    
    func shotDownLamp() {
        for lamp in lamps {
            lamp.layer.cornerRadius = 75
            lamp.alpha = 0.1
        }
    }

    
}

