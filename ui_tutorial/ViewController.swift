//
//  ViewController.swift
//  ui_tutorial
//
//  Created by Manocchio, Dario on 2018-01-19.
//  Copyright © 2018 Manocchio, Dario. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Handle the text fields's user input through delegate callbacks
        mealTextField.delegate = self
    }
    //UI Elements
    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //hide keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text=textField.text
    }
    //Actions
    @IBAction func changeMealNameBtn(_ sender: UIButton) {
        mealNameLabel.text="default"
        
    }


}

