//
//  SayfaX.swift
//  Odev4
//
//  Created by Selin Aslan on 21.04.2022.
//

import UIKit

class SayfaX: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gitY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaXtensayfaYyeGecis", sender: nil)
    }
}
