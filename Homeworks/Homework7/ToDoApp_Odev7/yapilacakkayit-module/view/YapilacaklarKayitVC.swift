//
//  YapilacaklarKayitVC.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 12.05.2022.
//

import UIKit

class YapilacaklarKayitVC: UIViewController {

    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacakKayitPresenterNesnesi:ViewToPresenterYapilacakKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacakKayitRouter.createModule(ref: self)

        
    }
    
    @IBAction func buttonEkle(_ sender: Any) {
        if let yapIs = tfYapilacakIs.text {
            yapilacakKayitPresenterNesnesi?.ekle(yapilacak_is: yapIs)
        }
        
    }
}
