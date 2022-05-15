//
//  YapilacakDetayProtocols.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

protocol ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor:PresenterToInteractorYapilacakDetayProtocol? {get set}
    
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakDetayProtocol {
    func yapilacakGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:YapilacaklarDetayVC)
}
