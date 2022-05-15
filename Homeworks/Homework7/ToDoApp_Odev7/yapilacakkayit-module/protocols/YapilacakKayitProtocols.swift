//
//  YapilacakKayitProtocols.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

protocol ViewToPresenterYapilacakKayitProtocol {
    
    var yapilacakKayitInteractor:PresenterToInteractorYapilacakKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakKayitProtocol {
    func yapilacakEkle(yapilacak_is:String)
}

protocol PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref:YapilacaklarKayitVC)
}
