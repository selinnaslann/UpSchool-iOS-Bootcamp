//
//  YapilacakKayitPresenter.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

class YapilacakKayitPresenter :ViewToPresenterYapilacakKayitProtocol {
    var yapilacakKayitInteractor: PresenterToInteractorYapilacakKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        yapilacakKayitInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
}
