//
//  AnasayfaPresenter.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation
class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func yapilacaklariYukle() {
        anasayfaInteractor?.tumYapilacaklariAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.yapilacakAra(aramaKelimesi: aramaKelimesi)
    }
    
    func `sil`(yapilacak_id: Int) {
        anasayfaInteractor?.yapilacakSil(yapilacak_id: yapilacak_id)
    }
    
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi: Array<Yapilacaklar>) {
        anasayfaView?.vieweVeriGonder(yapilacaklarListesi: yapilacaklarListesi)
    }
}
