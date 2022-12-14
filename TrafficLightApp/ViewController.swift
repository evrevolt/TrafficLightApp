//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Геннадий Ведерников on 19.10.2022.
//

import UIKit

//Перечисление для switch
enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    //Объявлем вариант перечисления
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Закругляем кнопку
        startButton.layer.cornerRadius = 10
    }
    
    //Get radius view
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }

    @IBAction func startButtonAction() {
        //Меняем название кнопки
        startButton.setTitle("NEXT", for: .normal)
        
        //Меняем цвет в зависимости от цвета
        switch currentLight {
        case .red:
            redView.alpha = 1
            greenView.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            currentLight = .green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentLight = .red
        }
    }
}

