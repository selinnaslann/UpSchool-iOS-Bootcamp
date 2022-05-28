//
//  SepetProtocols.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 27.05.2022.
//

import Foundation

protocol ViewToPresenterSepetProtocol {
    var sepetInteractor:PresenterToInteractorSepetProtocol? {get set}
    var sepetView:PresenterToViewSepetProtocol? {get set}
    
    func sepetiYukle(kullanici_adi:String)
    
    func sil(sepet_yemek_id:Int,kullanici_adi:String)
}

protocol PresenterToInteractorSepetProtocol {
    var sepetPresenter:InteractorToPresenterSepetProtocol? {get set}
    
    func sepettekiTumYemekleriAl(kullanici_adi:String)
    func sepettenYemekSil(sepet_yemek_id:Int,kullanici_adi:String)
    
}

protocol InteractorToPresenterSepetProtocol {
    func presenteraVeriGonder(sepetYemeklerListesi:Array<Sepet_Yemekler>)
}

protocol PresenterToViewSepetProtocol {
    func vieweVeriGonder(sepetYemeklerListesi:Array<Sepet_Yemekler>)
}

protocol PresenterToRouterSepetProtocol {
    static func createModule(ref:SepetVC)
}
