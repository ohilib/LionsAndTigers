//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Philip Pang on 4/4/15.
//  Copyright (c) 2015 Philip Pang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "tigger"
        myTiger.age = 3
        myTiger.breed = "Bengel"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        println("My tiger name is \(myTiger.name), its' age is \(myTiger.age), its' breed is \(myTiger.breed), and its' image is \(myTiger.image)")
    
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        myTigers.append(myTiger)
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.age = 2
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.age = 4
        thirdTiger.breed = "Malaysan Tiger"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var forthTiger = Tiger()
        forthTiger.name = "Spar"
        forthTiger.age = 1
        forthTiger.breed = "Siberian Tiger"
        forthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        myTigers += [secondTiger, thirdTiger, forthTiger]
    
 
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
 
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        let tiger = myTigers[randomIndex]
        
        myImageView.image = tiger.image
        nameLabel.text = tiger.name
        ageLabel.text = "\(tiger.age)"
        breedLabel.text = tiger.breed
        
        
        
    }

}

