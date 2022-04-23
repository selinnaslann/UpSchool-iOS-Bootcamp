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
        sonuc = 0
        
    }
    @IBAction func btn1(_ sender: Any) {
        labelSonuc.text?.append("1")
        sonuc = sonuc + 1
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        labelSonuc.text?.append("2")
        sonuc = sonuc + 2
    }
    @IBAction func btn3(_ sender: Any) {
        labelSonuc.text?.append("3")
        sonuc = sonuc + 3
        
    }
    @IBAction func btn4(_ sender: Any) {
        labelSonuc.text?.append("4")
        sonuc = sonuc + 4
        
    }
    @IBAction func btn5(_ sender: Any) {
        labelSonuc.text?.append("5")
        sonuc = sonuc + 5
        
    }
    @IBAction func btn6(_ sender: Any) {
        labelSonuc.text?.append("6")
        sonuc = sonuc + 6
        
    }
    @IBAction func btn7(_ sender: Any) {
        labelSonuc.text?.append("7")
        sonuc = sonuc + 7
        
    }
    @IBAction func btn8(_ sender: Any) {
        labelSonuc.text?.append("8")
        sonuc = sonuc + 8
        
    }
    @IBAction func btn9(_ sender: Any) {
        labelSonuc.text?.append("9")
        sonuc = sonuc + 9
        
    }
    @IBAction func btn0(_ sender: Any) {
        labelSonuc.text?.append("0")
        sonuc = sonuc + 0
        
    }
    
    @IBAction func btnEsittir(_ sender: Any) {
        
        let sayilar = labelSonuc.text
        let verilerim = sayilar!.split(separator: "+")
        print("sonuc : \(verilerim)")
        labelSonuc.text = String(Int(sonuc))
        print("Toplam : \(sonuc)")
       
        
       /*let intArray? = verilerim.compactMap {
            str in
            return Int(str)
        }
        print("intArray : \(intArray)") */
        /*
        var nums = [intArray!]
        let sumNums = nums.reduce(0) { (sum ,num) -> Int in
            
            (sum + num)
        }
        print("Toplam : \(sumNums)") */
        
        //Bir yöntem denedim. Olmadı. 10 Sayıya kadar olan verileri topladım.
        
        /* let s1 = Int(intArray[0]!)
        let s2 = Int(intArray[1]!)
        let s3 = Int(intArray[2]!)
        let s4 = Int(intArray[3]!)
        let s5 = Int(intArray[4]!)
        let s6 = Int(intArray[5]!)
        let s7 = Int(intArray[6]!)
        let s8 = Int(intArray[7]!)
        let s9 = Int(intArray[8]!)
        let s10 = Int(intArray[9]!)
        sonuc = (Int(s1)) + (Int(s2)) + (Int(s3)) + (Int(s4)) + (Int(s5)) + (Int(s6)) + (Int(s7)) + (Int(s8)) + (Int(s9)) + (Int(s10))
        labelSonuc.text = String(sonuc) */
        
    }
}

