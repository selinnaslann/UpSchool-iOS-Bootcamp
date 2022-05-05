//
//  Protocols.swift
//  ViperKullanimi
//
//  Created by Selin Aslan on 30.04.2022.
//

import Foundation

// View -> Presenter -> Interactor

//Ana Protocoller

protocol ViewToPresenterProtocol {
    var interactor:PresenterToInteractorProtocol? {get set}
    var view:PresenterToViewProtocol? {get set}
    
    func toplamaYap(sayi1:String,sayi2:String)
    func carpmaYap(sayi1:String,sayi2:String)
    
}


protocol PresenterToInteractorProtocol {
    var presenter:InteractorToPresenterProtocol? {get set}
    
    func topla(sayi1:String,sayi2:String)
    func carp(sayi1:String,sayi2:String)
    
}

//Taşıyıcı protocoller

protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc:String)
}

protocol PresenterToViewProtocol {
    func vieweVeriGonder(sonuc:String)
}


//Router protocol

protocol PresenterToRouterProtocol {
    static func createModule(ref:ViewController)
}
