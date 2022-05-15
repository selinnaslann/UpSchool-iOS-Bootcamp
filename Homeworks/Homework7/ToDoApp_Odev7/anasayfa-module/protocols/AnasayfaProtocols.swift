//
//  AnasayfaProtocols.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

// Ana protocoller

protocol ViewToPresenterAnasayfaProtocol {
    
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func yapilacaklariYukle()
    func ara(aramaKelimesi:String)
    func sil(yapilacak_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumYapilacaklariAl()
    func yapilacakAra(aramaKelimesi:String)
    func yapilacakSil(yapilacak_id:Int)
}


// Taşıyıcı Protocoller

protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi:Array<Yapilacaklar>)
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi:Array<Yapilacaklar>)
}

//Router Protocol

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
