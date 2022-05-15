//
//  ViewController.swift
//  JsonParseKullanimi
//
//  Created by Selin Aslan on 7.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        parseIslemi()
    }
    
    func parseIslemi() {
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        
        URLSession.shared.dataTask(with: url) { data,response,error in
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!)
                print(json)
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}

