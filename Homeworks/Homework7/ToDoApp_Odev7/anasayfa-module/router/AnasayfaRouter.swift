//
//  AnasayfaRouter.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation
class AnasayfaRouter : PresenterToRouterAnasayfaProtocol {
    static func createModule(ref: AnasayfaVC) {
        let presenter = AnasayfaPresenter()
        
        //view
        ref.anasayfaPresenterNesnesi = presenter
        
        //presenter
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
        
        //interactor
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
}
