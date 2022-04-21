//
//  SayfaA.swift
//  Odev4
//
//  Created by Selin Aslan on 21.04.2022.
//

import UIKit

class SayfaA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func gitB(_ sender: Any) {
        performSegue(withIdentifier: "sayfaByeGecis", sender: nil)
    }
}
