//
//  YapilacakKayitRouter.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

class YapilacakKayitRouter:PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref: YapilacaklarKayitVC) {
        ref.yapilacakKayitPresenterNesnesi = YapilacakKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.yapilacakKayitInteractor = YapilacakKayitInteractor()
    }
}
