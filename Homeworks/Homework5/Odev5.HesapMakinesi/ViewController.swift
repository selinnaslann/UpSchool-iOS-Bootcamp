//
//  ViewController.swift
//  Odev5.HesapMakinesi
//
//  Created by Selin Aslan on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    var sonuc = 0
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text?.removeAll()
        
    }

    @IBAction func toplama(_ sender: Any) {
        labelSonuc.text?.append("+")
    }
    @IBAction func sifirlaButton(_ sender: Any) {
        labelSonuc.text?.removeAll()
        
    }
    @IBAction func btn1(_ sender: Any) {
        labelSonuc.text?.append("1")
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        labelSonuc.text?.append("2")
    
        
    }
    @IBAction func btn3(_ sender: Any) {
        labelSonuc.text?.append("3")
        
    }
    @IBAction func btn4(_ sender: Any) {
        labelSonuc.text?.append("4")
        
    }
    @IBAction func btn5(_ sender: Any) {
        labelSonuc.text?.append("5")
        
    }
    @IBAction func btn6(_ sender: Any) {
        labelSonuc.text?.append("6")
        
    }
    @IBAction func btn7(_ sender: Any) {
        labelSonuc.text?.append("7")
        
    }
    @IBAction func btn8(_ sender: Any) {
        labelSonuc.text?.append("8")
        
    }
    @IBAction func btn9(_ sender: Any) {
        labelSonuc.text?.append("9")
        
    }
    @IBAction func btn0(_ sender: Any) {
        labelSonuc.text?.append("0")
        
    }
    
    @IBAction func btnEsittir(_ sender: Any) {
        
        var sonuc = labelSonuc.text
        let verilerim = sonuc?.split(separator: "+")
        print("sonuc : \(verilerim!)")
        print("birinci sayı : \(verilerim![0])")
        /*
        let intArray = verilerim?.compactMap {
            str in
            return Int(str)
        }
        print("intArray : \(intArray!)")
        
        var nums = [intArray!]
        let sumNums = nums.reduce(0) { (sum ,num) -> Int in
            
            (sum + num)
        }
        print("Toplam : \(sumNums)") */
        
        //Bir yöntem denedim. Olmadı. 10 Sayıya kadar olan verileri topladım.
        
        let s1 = Int(verilerim![0])
        let s2 = Int(verilerim![1])
        let s3 = Int(verilerim![2])
        let s4 = Int(verilerim![3])
        let s5 = Int(verilerim![4])
        let s6 = Int(verilerim![5])
        let s7 = Int(verilerim![6])
        let s8 = Int(verilerim![7])
        let s9 = Int(verilerim![8])
        let s10 = Int(verilerim![9])
        sonuc = String(Int(s1!) + Int(s2!) + Int(s3!) + Int(s4!) + Int(s5!) + Int(s6!) + Int(s7!) + Int(s8!) + Int(s9!) + Int(s10!))
        labelSonuc.text = sonuc
        
    }
}

