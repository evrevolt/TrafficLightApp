//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Геннадий Ведерников on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        
        //Get radius view
        //redView.layer.cornerRadius = 50
        //yellowView.layer.cornerRadius = 70
        //greenView.layer.cornerRadius = 60
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonAction(_ sender: UIButton) {
        
    }
    
}

