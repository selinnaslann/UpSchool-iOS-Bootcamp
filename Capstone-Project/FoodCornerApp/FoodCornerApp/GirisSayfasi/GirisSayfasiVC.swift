//
//  GirisSayfasiVC.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 3.06.2022.
//

import UIKit

class GirisSayfasiVC: UIViewController {

    @IBOutlet weak var isimLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk")!,NSAttributedString.Key.font: UIFont(name: "AdventPro-Light", size: 22)!]
       
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
    }
    

}
