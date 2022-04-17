//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Selin Aslan on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textfieldGirdi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textfieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
        
    }
}

