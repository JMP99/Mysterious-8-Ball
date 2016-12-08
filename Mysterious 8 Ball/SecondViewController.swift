//
//  SecondViewController.swift
//  Mysterious 8 Ball
//
//  Created by Student on 12/5/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

extension UIView {
        func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
        
        
    }
}

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var magicEight: UIImageView!

    

    
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
    
        let randomIndex = Int(arc4random_uniform(UInt32(eightBallAnswers.count)))
      responseLabel.text = eightBallAnswers[randomIndex]
    magicEight.shake()
    responseLabel.shake()
       
    }
    
    

    
    
    var recievedString: String = ""
    var eightBallAnswers = ["It is certain", "It is decidedly so" , "Without a doubt" , "Yes, definitely" , "You may rely on it" , "As I see it, yes" , "Most likely" , "Outlook good" , "Yes" , "Signs point to yes" , "Reply hazy try again" , "Ask again later" , "Better not tell you now" , "Cannot predict now" , "Concentrate and ask again" , "Don't count on it" , "My reply is no" , "My sources say no" , "Outlook not so good" , "Very doubtful"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = recievedString
        responseLabel.lineBreakMode = .byWordWrapping
        responseLabel.numberOfLines = 0
        responseLabel.layer.cornerRadius = 10.0
        responseLabel.clipsToBounds = true
    }
   


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        /***Dispose of any resources that can be recreated. let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "smoke")
        self.view.insertSubview(backgroundImage, at: 0)***/
    }

}
