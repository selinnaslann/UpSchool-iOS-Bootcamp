import UIKit //UIKit bize arayüzle ilgili sınıfları sağlıyor.


 //Nesne tabanlı programlama : sistemin bir taslağını oluşturup daha düzenli ve temiz kod yazmak.
// Class : oluşan soyut taslaklar.

// Initialization - Constructor
// Bir sınıftan nesne oluşturmak için gerekli olan yapıdır.
// init kelimesi ile tanımlanır.

class Araba { //class isimleri genellikle büyük harf ile başlar.
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init() {
        print("Boş constructor çalıştı!") // bir şeyi tetiklemek.
    }
    
    
    // self : sınıfın kendisini teslim eder.
    //super : üst sınıfı (kalıtım ile)  temsil eder.
    
    init(renk:String,hiz:Int,calisiyorMu:Bool) { //Bu sınıftan bir nesne oluştururken oradaki değerlere pratik bir şekilde değerlerimizi iletmek.
        self.renk = renk //Shadowing : sınıf içindeki değer ile dışardan alınan değerleri eşlemek.
        self.hiz = hiz
        self.calisiyorMu  = calisiyorMu
        print("Dolu constructor çalıştı!")
    }
    
    func calistir() {
        calisiyorMu = true //Side effect : içerdeki değişkeni func yardımıyla değiştirme durumu
        hiz = 5
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    func  hizlan(kacKm:Int){
        hiz!+=kacKm // (!) ile unwrap yaptık. Çünkü hiz değeri class içinde optional. Bu durumda hata alıyoruz.
    }
    
    func yavasla(kacKm:Int){
        hiz!-=kacKm
    }
    
    func bilgiAl() {
        print("***********")
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu : \(calisiyorMu!)")
    }
}

// let bmw = Araba() //nesne (object) oluşturma
let bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true) // Dolu constructor ile daha pratik

//Değer atama
//bmw.renk = "Mavi"
//bmw.hiz = 100
//bmw.calisiyorMu = true

//Değer Okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 100)
bmw.bilgiAl()
bmw.yavasla(kacKm: 50)
bmw.bilgiAl()


let sahin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false)

//sahin.renk = "Beyaz"
//sahin.hiz = 0
//sahin.calisiyorMu = false

sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.hizlan(kacKm: 30)
sahin.bilgiAl()

// Class - Structure
// Class : referans tipidir.
// Structure : değer tipidir. Miras özelliği yoktur.

// Referans tipi :  Hafıza yönetiminde iki nesneninde aynı yeri işaret etmesidir.
class Ogrenci {
    var ad:String?
}
var ogrenci1 = Ogrenci()
ogrenci1.ad = "Ahmet"

var ogrenci2 = ogrenci1 // ogrenci2 artık ogrenci1 ile aynıdır.
ogrenci2.ad = "Mehmet"

print(ogrenci1.ad!) // Çıktı : Mehmet . Artık ogrenci1 de ogrenci2 de aynı yeri işaret eder. Dezavantajı : en son verdiğin değeri temsil eder. ogrenci1 Ahmet iken artık Mehmet oldu. Avantajı : hafıza yönünden faydalı.

//Değer tipi : Hafızada kopyalayarak ilerliyor. Dezavantaj : Hafızada çok yer kaplar.  Avantaj : nesneler birbirinden etkilenmezler.

struct Kopek {
    var renk:String?
}
var kopek1 = Kopek()
kopek1.renk = "Kırmızı"

var kopek2 = kopek1 // burada  kopek1 in özelliğini kopyaladı ve hafızada iki tane kırmızı bilgisini tuttu.
kopek2.renk = "Beyaz"

print(kopek1.renk!) // Çıktı : Kırmızı . kopek1, kopek2 nin değerinden etkilenmedi.

// Çoğunlukla kalıtım kullanacağımız için class kullanıyoruz.

// Fonksiyonlar : func ile yazılır.


class Fonksiyonlar {
    // Geri dönüş değeri olmayan : void
    func selamla() {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    // Geri dönüş değeri olan : return
    func selamla1() -> String { //fonk ismini aynı yapmıyoruz. Aynı olsun istiyorsak parametre tiplerini değiştirmemiz gerekir.
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    //Parametre kullanımı
    func selamla2(isim:String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int,sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading : Metotların aşırı yüklenmesi,fonk isimlerini aynı isimde kullanmamız
    
    func carpma(sayi1:Int,sayi2:Int) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double,sayi2:Double) { //fonk isimlerini aynı kullanmak istiyorsak, 1.yol : parametre türlerini değiştirebilirsin.
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String) { //2.yol : yeni bir parametre eklemek.
        print("Çarpma : \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
    }
    
}
 // Class ın içindeki herhangi bir değişkene veya fonksiyona erişmek istiyorsam o sınıftan bir nesne oluşturmam gerekiyor.

let f = Fonksiyonlar()
f.selamla()

let gelenSonuc = f.selamla1() // geri dönüş değeri olan fonk olduğu için önce o class tan bir nesne oluşturduk. sonra print ettik.
print("Gelen Sonuç : \(gelenSonuc)")

f.selamla2(isim: "Selin") // geri dönüş değeri olmayan fonk olduğu için direkt çağırdık.

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 5, sayi2: 8, isim: "Selin")

// Static : Değişken ve metotlara sınıf ismi ile erişim sağlanır.

class ASinif{
    static var x = 10
    static func metod() {
        print("Metod çalıştı.")
    }
}

print(ASinif.x)
ASinif.metod()


class BSinif {
    var x = 10
    func metod() {
        print("Metod çalıştı.")
    }
}

// BSinif() : Sanal nesne;nesne oluşturmaya gerek kalmadan parantezli şekilde sınıf ismi ile class içindeki nesnelere erişim sağlanabiliyor.
print(BSinif().x) // Parantez varsa sanal nesnedir. Olmuyorsa static tir.
BSinif().metod()


// Enumeration (enum) : Bizi detaydan kurtarsın istiyoruz.

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut:KonserveBoyut,adet:Int) {
    switch boyut {
        case .kucuk:
            print("Fiyat : \(adet * 10) ₺")
        case .orta:
            print("Fiyat : \(adet * 20) ₺")
        case .buyuk:
            print("Fiyat : \(adet * 30) ₺")
    }
}

ucretHesapla(boyut: .orta, adet: 23)

// Composition

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    
    var kategori:Kategoriler? // Başka bir sınıftan nesneyi buraya aktardık.
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Interstellar", film_yil: 2019, kategori: k2, yonetmen: y2)

print("Film id : \(f1.film_id!)")
print("Film ad : \(f1.film_ad!)")
print("Film yıl : \(f1.film_yil!)")
print("Film kategori : \(f1.kategori!.kategori_ad!)")
print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")

//Kalıtım (Inheritance) : mevcut bir sınıftan başka bir sınıf türetmek için kullanılır.
// Bir sınıfın tek kalıtımı olabilir.
// üst sınıfa superclass denir. (özellik aktaran sınıf)
// Alt sınıfa subclass denir.

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray : Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi : pencereSayisi) // üst sınıfın özelliğini bu sınıftada kullanabilmek için bunu yaptık.
    }
}

class Villa : Ev {
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi : pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)

var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

//Overriding : metodları ezme,kalıtım ilişkisinde üst sınıfın metodlarının alt sınıf tarafından tekrar kullanılması.


class Hayvan {
    func sesCikar() {
        print("Sesim yok.")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCikar() { // Kedi sınıfı memeli sınıfından, memeli sınıfıda hayvan sınıfından miras aldığı için hayvan sınıfının sesCikar metodunu görebiliyoruz. Buna da override diyoruz. Yani func başında override görüyorsak bir üst sınıfının metodunu kullandığını anlayabiliriz.
        print("MİYAV")
    }
}

class Kopek3 : Memeli {
    override func sesCikar() {
        print("HAV HAV")
    }
}



var hayvan = Hayvan()
var memeli = Memeli()
var kedi = Kedi()
var kopek3 = Kopek3()

hayvan.sesCikar()
memeli.sesCikar()
kedi.sesCikar()
kopek3.sesCikar()

//Nesnelerin tip dönüşümleri
// is, as, as!, as?

// is : (Type Checking) Tip kontrolü için kullanılır.
// as : (Upcasting) Bir tipi başka bir tipe dönüştürmek için kullanılır.
// as! : (Force Downcasting) Bir tipi başka bir tipe dönüştürmek için kullanılır. Dönüşüm sırasında başarısız olursa hata, başarılı ise değeri dönüştürür.
// as? : (For Optional Downcasting) Dönüşüm sırasında optional bir veri geliyorsa. Dönüşüm sırasında başarısız olursa nil, başarılı ise değeri dönüştürür.

/* let topkapi:Saray = Saray(kuleSayisi: 1, pencereSayisi: 300)
if topkapi is Saray {
    print("Bu bir Saraydır!")
}else {
    print("Bu bir Saray değildir!")
}
*/

// Downcasting - Upcasting (Kalıtım ilişkisi olmalı)
// Ev superclass, Saray ve Villa subclass olduğu durumda ;
// Ev in Saraya ve Villaya dönüşmesi : Downcasting
// Sarayın veya Villanın Ev e dönüşmesi : Upcasting
// Saray Villaya veya Villa Saraya dönüşemez. Çünkü aralarında kalıtım ilişkisi yoktur.

//Upcasting
var ev = Saray(kuleSayisi: 4, pencereSayisi: 100) as Ev

//Downcasting
var saray = Ev(pencereSayisi: 5) as? Saray
 

// Protocol : kalıtım gibi : ile bir sınıftan miras alıyoruz fakat kalıtımdan farkı protocol de miras aldığımız sınıfın metotlarını da yazmak zorundayız.
// Bir diğer farkı ise kalıtımda , diyerek başka sınıflardan miras alamıyorduk. Protocol de alabiliyoruz.

protocol MyProtocol {
    var degisken:Int {get set} // get özelliği ile veri aktaracağız, set özelliği ile veriyi okuyacağız. get zorunlu.
    
    func metod1()
    func metod2() -> String // {} kullanmak zorunda kalmıyoruz. Çünkü bu protocol ü  bir sınıfa eklediğim zaman otomatik olarak oluşacak.
}

class ClassA : MyProtocol { //conform et diye uyarı geliyorsa protocol de ki değişken ve metotları eklemediğimiz anlamına gelir.
    var degisken: Int = 10
    func metod1() {
        print("Metod1 çalıştı")
    }
    func metod2() -> String {
        return "Metod2 çalıştı."
    }
}

var a = ClassA()

print(a.degisken)
a.metod1()
print(a.metod2())

//Extension : var olan yapıları genişletmek,yeni metotlar yazmak
// Kotlin de infix fonk olarak geçiyor.
// extension ı sınıfı bölmek içinde kullanabiliriz. sınıfı bölerek belirli özellikleri ait metotları yazabiliriz.

extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi // self burada Int i temsil ediyor.
    }
}

var x = 3.carp(sayi: 10) // burada self 3 oluyor.
print(x)

// Closure

var ifade = { // değişken gibi başlayıp {} kullandık. Süslü parantez içine eşitlik sağlıyor yani çalıştırdı.
    print("Closure kullanımı")
}

ifade() // sanki fonk muş gibi çalıştırabiliyoruz. 
