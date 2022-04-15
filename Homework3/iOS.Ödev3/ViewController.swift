//
//  ViewController.swift
//  iOS.Ödev3
//
//  Created by Selin Aslan on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var imageCard: UIImageView!
    @IBOutlet weak var HarcamaBtn: UIButton!
    @IBOutlet weak var EkstreBtn: UIButton!
    @IBOutlet weak var BasvuruBtn: UIButton!
    @IBOutlet weak var OdemeBtn: UIButton!
    @IBOutlet weak var HavaleBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageCard.layer.cornerRadius = 55
        
        HavaleBtn.layer.borderWidth = 1
        HavaleBtn.layer.borderColor = UIColor.black.cgColor
        
        OdemeBtn.layer.borderWidth = 1
        OdemeBtn.layer.borderColor = UIColor.black.cgColor
        
        BasvuruBtn.layer.borderWidth = 1
        BasvuruBtn.layer.borderColor = UIColor.black.cgColor
        
        HarcamaBtn.layer.borderWidth = 1
        HarcamaBtn.layer.borderColor = UIColor.black.cgColor
        
        EkstreBtn.layer.borderWidth = 1
        EkstreBtn.layer.borderColor = UIColor.black.cgColor
        

        self.navigationItem.title = "Bank"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "firstColor")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "textColor1")!,NSAttributedString.Key.font: UIFont(name: "Righteous-Regular", size: 22)!]
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
        
        

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
}

}
