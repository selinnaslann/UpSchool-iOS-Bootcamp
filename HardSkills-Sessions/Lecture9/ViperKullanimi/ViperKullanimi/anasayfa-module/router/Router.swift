//
//  Router.swift
//  ViperKullanimi
//
//  Created by Selin Aslan on 30.04.2022.
//

import Foundation

class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View sınıfı değişkeni yetkilendirme
        ref.presenterNesnesi = presenter
        
        //Presenter sınıfı değişkeni yetkilendirme
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //Interactor sınıfı değişkeni yetkilendirme
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
    
}
