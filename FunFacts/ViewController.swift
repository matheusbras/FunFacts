//
//  ViewController.swift
//  FunFacts
//
//  Created by Matheus Bras on 18/09/14.
//  Copyright (c) 2014 Matheus Bras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var funFactLabel: UILabel!
    @IBOutlet var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var color = colorWheel.randomColor()
        view.backgroundColor = color
        funFactButton.tintColor = color
        funFactLabel.text = factBook.randomFact()
    }
}

