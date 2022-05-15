//
//  YapilacakDetayInteractor.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 13.05.2022.
//

import Foundation

class YapilacakDetayInteractor : PresenterToInteractorYapilacakDetayProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("toDoApp.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE yapilacaklar SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [yapilacak_is,yapilacak_id])
            
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
}
