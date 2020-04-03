//
//  ViewController.swift
//  ElementQuize-Lesson-18-ItADwS
//
//  Created by Ivan Prybolovetz on 4/3/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    var currentElementEndex =  0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElements()
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementEndex]
    }
    
    @IBAction func gotoNextElements(_ sender: UIButton) {
         currentElementEndex += 1
        if currentElementEndex >= elementList.count {
            currentElementEndex = 0
        }
        updateElements()
    }
 
    func updateElements() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementEndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
    }
}

