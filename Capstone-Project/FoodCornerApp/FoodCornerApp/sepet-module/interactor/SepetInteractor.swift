//
//  SepetInteractor.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 27.05.2022.
//

import Foundation

class SepetInteractor : PresenterToInteractorSepetProtocol{
    var sepetPresenter:InteractorToPresenterSepetProtocol?
    
    func sepettekiTumYemekleriAl(kullanici_adi: String) {
        
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/yemekler/sepettekiYemekleriGetir.php")!)
        istek.httpMethod = "POST"
        let postString = "kullanici_adi=\(kullanici_adi)"
        istek.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek) { data,response,error in
            if error != nil || data == nil {
                print("Hata")
                return
            }
            do {
                let cevap = try JSONDecoder().decode(Sepet_YemeklerCevap.self, from: data! )
                
                if let liste = cevap.sepet_yemekler {
                    self.sepetPresenter?.presenteraVeriGonder(sepetYemeklerListesi: liste)
                }
            }catch{print(error.localizedDescription)
        }
        }.resume()
    }
    
    func sepettenYemekSil(sepet_yemek_id: Int,kullanici_adi: String) {
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/yemekler/sepettenYemekSil.php")!)
        istek.httpMethod = "POST"
        let postString = "sepet_yemek_id=\(sepet_yemek_id)&kullanici_adi=\(kullanici_adi)"
        istek.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek) { data,response,error in
            if error != nil || data == nil {
                print("Hata")
                return
            }
            do {
                let cevap = try JSONSerialization.jsonObject(with: data!)
                print(cevap)
                self.sepettekiTumYemekleriAl(kullanici_adi: "Selin")
            }catch{print(error.localizedDescription)
            }
        }.resume()
    }
    
   
}
