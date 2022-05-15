//
//  YapilacakDetayPresenter.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

class YapilacakDetayPresenter : ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        yapilacakDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
}

