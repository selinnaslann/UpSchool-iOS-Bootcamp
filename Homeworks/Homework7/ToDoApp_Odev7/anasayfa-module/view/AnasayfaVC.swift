//
//  ViewController.swift
//  ToDoApp_Odev7
//
//  Created by Selin Aslan on 12.05.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var yapilacaklarTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var yapilacaklarListe = [Yapilacaklar]()
    
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        yapilacaklarTableView.delegate = self
        yapilacaklarTableView.dataSource = self
        
        veriTabaniKopyala()
        
        AnasayfaRouter.createModule(ref: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.yapilacaklariYukle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let yapilacak = sender as? Yapilacaklar {
                let gidilecekVC = segue.destination as! YapilacaklarDetayVC
                gidilecekVC.yapilacak = yapilacak
            }
        }
    }
    
    func veriTabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "toDoApp", ofType: "sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("toDoApp.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path) {
            print("Veritabanı zaten var!")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
    }
}

extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi: Array<Yapilacaklar>) {
        self.yapilacaklarListe = yapilacaklarListesi
        self.yapilacaklarTableView.reloadData()
    }
}

extension AnasayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
    }
}

extension AnasayfaVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yapilacaklarListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yapilacak = yapilacaklarListe[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "yapilacaklarHucre", for: indexPath) as! TableViewHucre
        
        hucre.yapilacakIsLabel.text = "\(yapilacak.yapilacak_is!)"
        
        return hucre
        
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {
            (action,view,void) in
            let yapilacak = self.yapilacaklarListe[indexPath.row]
           
            
            let alert = UIAlertController(title: "Silme işlemi", message: "\(yapilacak.yapilacak_is!) silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {action in}
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) {action in
                self.anasayfaPresenterNesnesi?.sil(yapilacak_id: yapilacak.yapilacak_id!)
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let yapilacak = yapilacaklarListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: yapilacak)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
