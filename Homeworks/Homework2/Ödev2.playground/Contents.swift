import UIKit

class Soru1{
    func dereceFahrenhiet(derece:Double) -> Double {
        let fahrenhiet = (derece * 1.8) + 32
        return fahrenhiet
    }
    
}

let f = Soru1()
let gelenSonuc = f.dereceFahrenhiet(derece: 20)
print("Fahrenhiet: \(gelenSonuc)")

class Soru2{
    func dikdörtgenCevre(kk:Int, uk:Int){
       print("Dikdörtgenin Çevresi: \((kk + uk) * 2)")
    }
}


let d = Soru2()
d.dikdörtgenCevre(kk: 10, uk: 20)



class Soru3{
    func faktoriyelHesaplama (sayi:Int) -> Int {
        var sonuc = 1
        for i in 1...sayi {
            sonuc = sonuc * i
        }
        return sonuc
    }
    
}

let soru3 = Soru3()
let gelenSonuc3 = soru3.faktoriyelHesaplama(sayi: 4)
print("Faktöriyel : \(gelenSonuc3)")

class Soru4{
    func kelimeAdetBulma (kelime:String,harf:Character) {
        var sonuc = 0
        for k in kelime {
            if k == harf {
                sonuc+=1
            }
        }
        print("Harf sayısı : \(sonuc)")
    }
    
}

let soru4 = Soru4()
soru4.kelimeAdetBulma(kelime: "Selin", harf: "e")

class Soru5{
    func icAciToplam(n:Int) -> Int {
        let icAci = (n - 2) * 180
        return icAci
        
    }
}

let ic = Soru5()
let gelenSonuc5 = ic.icAciToplam(n: 3)
print("İç Açılar Toplamı: \(gelenSonuc5)")


class Soru6{
    var saat:Int?
    var maas:Int?
    func maasHesabi(gün:Int) -> Int{
       saat = (gün * 8)
      if saat! <= 160
        {
          let mesaisizMaas = saat! * 10
          return mesaisizMaas
      }else if (saat! > 160){
          let mesailiMaas = ((saat! - 160) * 20) + (160 * 10)
          return mesailiMaas
      }
        return maas!
    }
}

let maasHesaplama = Soru6()
let gelenSonuc6 = maasHesaplama.maasHesabi(gün: 40)
print("Maaş: \(gelenSonuc6)")


class Soru7{
    var normalKota:Int?
    var ücret:Int?
    func ucretHesapla(kota:Int) -> Int {
        if kota <= 50
        {
            let normalKota = 100
            return normalKota
        }
        else if (kota > 50)
        {
            let asimliKota = ((kota - 50) * 4) + 100
            return asimliKota
        }
        return ücret!
    }
}

let ücretHesaplama = Soru7()
let gelenSonuc7 = ücretHesaplama.ucretHesapla(kota: 70)
print("Ücret: \(gelenSonuc7) TL")


