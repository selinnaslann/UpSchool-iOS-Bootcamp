//
//  YapilacakDetayRouter.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

class YapilacakDetayRouter : PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref: YapilacaklarDetayVC) {
        ref.yapilacakDetayPresenterNesnesi = YapilacakDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacakDetayInteractor()
    }
}
