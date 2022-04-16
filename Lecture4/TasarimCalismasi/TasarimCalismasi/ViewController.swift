//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Selin Aslan on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        //Arkaplan rengi
        appearance.backgroundColor = UIColor(named: "anaRenk")
        //Başlık rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,NSAttributedString.Key.font: UIFont(name: "Pacifico-Regular", size: 22)!]
        //Status Bar
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

