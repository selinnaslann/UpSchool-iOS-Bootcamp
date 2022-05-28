//
//  SepetPresenter.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 27.05.2022.
//

import Foundation

class SepetPresenter : ViewToPresenterSepetProtocol {
    var sepetInteractor: PresenterToInteractorSepetProtocol?
    var sepetView:PresenterToViewSepetProtocol?
    
    func sepetiYukle(kullanici_adi: String) {
        sepetInteractor?.sepettekiTumYemekleriAl(kullanici_adi: "Selin")
    }
    
    func sil(sepet_yemek_id: Int,kullanici_adi:String) {
        sepetInteractor?.sepettenYemekSil(sepet_yemek_id: sepet_yemek_id, kullanici_adi: kullanici_adi)
    }
    
    
}

extension SepetPresenter : InteractorToPresenterSepetProtocol {
    func presenteraVeriGonder(sepetYemeklerListesi: Array<Sepet_Yemekler>) {
        sepetView?.vieweVeriGonder(sepetYemeklerListesi: sepetYemeklerListesi)
    }
}
