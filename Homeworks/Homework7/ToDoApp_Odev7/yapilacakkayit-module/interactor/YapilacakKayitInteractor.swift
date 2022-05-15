//
//  YapilacakKayitInteractor.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

class YapilacakKayitInteractor : PresenterToInteractorYapilacakKayitProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("toDoApp.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    
    func yapilacakEkle(yapilacak_is: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES(?)", values: [yapilacak_is])
            
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
}
