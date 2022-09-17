//
//  ViewController.swift
//  mediumpost
//
//  Created by Selin Aslan on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var uiswitch: UISwitch!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTikla(_ sender: Any) {
        //Textfield gibi alanlardan veri alınırken kontrol yapmakta fayda vardır.
        //Optional olduğu için null olabilir.
        
        if let gelenVeri = textfield.text {
            label.text = gelenVeri
        }
    }
    
    @IBAction func switchAnlik(_ sender: UISwitch) {
        
    }
}

