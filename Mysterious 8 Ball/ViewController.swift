//
//  ViewController.swift
//  Mysterious 8 Ball
//
//  Created by Student on 12/5/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var questionTextField: UITextField! = nil
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "coolio")
        self.view.insertSubview(backgroundImage, at: 0)
        questionTextField.delegate=self
        

        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView: SecondViewController = segue.destination as! SecondViewController
        secondView.recievedString = questionTextField.text!

    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        questionTextField.resignFirstResponder()
        return true;
    }
        

}


