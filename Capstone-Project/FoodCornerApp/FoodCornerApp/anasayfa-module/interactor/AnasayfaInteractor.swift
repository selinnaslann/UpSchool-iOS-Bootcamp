//
//  AnasayfaInteractor.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 27.05.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func yemekleriListele() {
        
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php")!
        
        URLSession.shared.dataTask(with: url) { data,response,error in
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do {
                let cevap = try JSONDecoder().decode(YemeklerCevap.self, from: data! )
                if let liste = cevap.yemekler {
                    self.anasayfaPresenter?.presenteraVeriGonder(yemeklerListesi: liste)
                }
            }catch{print(error.localizedDescription)
            }
        }.resume()
    }
    
}
