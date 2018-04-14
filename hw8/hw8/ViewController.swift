//
//  ViewController.swift
//  hw8
//
//  Created by Tyla Pollard on 3/5/18.
//  Copyright © 2018 spelman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton! //outlet for the button
    @IBOutlet weak var imageView: UIImageView!
    var start = true // boolean for if animation is Playing. was at true

    //reference action for the slider
    @IBAction func slider(_ sender: UISlider) {
      imageView.animationDuration = TimeInterval(sender.value) //the values given by the slider will determine that speed of the animation
        
        if(start == true)
        {
            imageView.startAnimating() //only let it play if it should
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.setTitle("Start", for: .normal) //set the title when it loads
        button.setBackgroundImage(UIImage(named: "redButton1"), for: .normal) //button will initially be red. this returns a optional image
        imageView.image = UIImage(named: "dance_moves-1") //make the intial image be the dancer
        let dancerImages = [UIImage(named: "dance_moves-2")!,
                             UIImage(named: "dance_moves-3")!,
                             UIImage(named: "dance_moves-4")!,
                             UIImage(named: "dance_moves-5")!,
                            UIImage(named: "dance_moves-6")!,
                            UIImage(named: "dance_moves-7")!,
            UIImage(named: "dance_moves-8")!,
            UIImage(named: "dance_moves-9")!,
            UIImage(named: "dance_moves-10")!,
            UIImage(named: "dance_moves-11")!,
            UIImage(named: "dance_moves-12")!,
            UIImage(named: "dance_moves-13")!,
            UIImage(named: "dance_moves-14")!,
            UIImage(named: "dance_moves-15")!,
            UIImage(named: "dance_moves-16")!,
            UIImage(named: "dance_moves-17")!,
            UIImage(named: "dance_moves-18")!,
            UIImage(named: "dance_moves-19")!,
            UIImage(named: "dance_moves-20")!,
            UIImage(named: "dance_moves-21")!,
            UIImage(named: "dance_moves-22")!,
            UIImage(named: "dance_moves-23")!,
            UIImage(named: "dance_moves-24")!,
            UIImage(named: "dance_moves-25")!,
            UIImage(named: "dance_moves-26")!,
            UIImage(named: "dance_moves-27")!,
            UIImage(named: "dance_moves-28")!,
            UIImage(named: "dance_moves-29")!,
            UIImage(named: "dance_moves-30")!,
            UIImage(named: "dance_moves-31")!,
            UIImage(named: "dance_moves-32")!,
            UIImage(named: "dance_moves-33")!,
            UIImage(named: "dance_moves-34")!,
            UIImage(named: "dance_moves-35")!,
            UIImage(named: "dance_moves-36")!,
            UIImage(named: "dance_moves-37")!,
            UIImage(named: "dance_moves-38")!]
        
            //creating a array of images and unwrapping them because the animation doesnt accept a array of optionals
        
        imageView.animationImages = dancerImages // this goes through the array of images
    imageView.animationDuration = 3 //let the speed start at 30
      imageView.startAnimating() // start the animation
        button.setTitle("Stop", for: .normal)
       // button.attributedTitle(for:.)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchbutton(_ sender: Any) {
        //function for what happens when the button is clicked
        start = !start // everytime the button is clicked bool value will get changed from true to false
        button.setTitle(start ? "Stop":"Start", for: .normal)
        button.setBackgroundImage(UIImage(named:start ? "redButton1":"greenButton1"), for:.normal) // if mybool is true then make button red, if false then make button green
        
        if(start == true)
        {
            imageView.startAnimating() //
        }
        else
        {
            imageView.stopAnimating()
        }
      
    }
    
}

