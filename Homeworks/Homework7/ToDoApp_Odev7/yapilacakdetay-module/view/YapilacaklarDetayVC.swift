//
//  YapilacaklarDetayVC.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 12.05.2022.
//

import UIKit

class YapilacaklarDetayVC: UIViewController {

    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacak:Yapilacaklar?
    var yapilacakDetayPresenterNesnesi:ViewToPresenterYapilacakDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let y = yapilacak {
            tfYapilacakIs.text = y.yapilacak_is
        }
        
        YapilacakDetayRouter.createModule(ref: self)
       
    }
    
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yi = tfYapilacakIs.text,let y = yapilacak {
            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yi)
        }
        
    }
}
