//
//  ViewController.swift
//  Odev4
//
//  Created by Selin Aslan on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gitA(_ sender: Any) {
        performSegue(withIdentifier: "sayfaAyaGecis", sender: nil)
        
    }
    
    @IBAction func gitX(_ sender: Any) {
        performSegue(withIdentifier: "sayfaXeGecis", sender: nil)
    }
}

