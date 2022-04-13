import UIKit

//Collection types
// Array : içerisine veri eklendikçe genişleyen bir yapı. her ekleme yaptığında 0. index ten başlayarak artarak ilerliyor.
// Set : Array den 1.farkı ; veri ekledikçe sırayla eklemiyor. Sıralamasını karıştırarak ekliyor. 2.farkı : aynı veriyi tekrar ekleyemeyiz.
// Dictionary : Key ve Value ları kendimiz üretiyoruz.

var numaralar = [10.0,20.0,30.0]
var sayilar = [Int](repeating: 0, count: 1000) //repeating tekrarlanacak yapıyı, count ise adedini gösterir.

var meyveler = [String]() // String tipinde Boş bir array

//Veri ekleme

meyveler.append("Elma") //0.
meyveler.append("Muz") //1.
meyveler.append("Kiraz") //2.

print(meyveler) // Çıktı : ["Elma", "Muz", "Kiraz"]

// Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler) // ["Yeni Elma", "Muz", "Kiraz"]
 
// Insert (araya eklemek)
meyveler.insert("Portakal", at: 1)
print(meyveler) // ["Yeni Elma", "Portakal", "Muz", "Kiraz"]

print(meyveler.isEmpty) // Boş mu? kontrolü,  Çıktı : false
print(meyveler.count) // boyut bilgisi , çıktı:4

meyveler.append("Kivi")
print(meyveler)

print(meyveler.first!) //0. index veya ilk eleman
print(meyveler.last!) // son index elemanı
print(meyveler.contains("Muz")) // İçeriyor mu? Çıktı:true

/* var yazi = "Merhaba"

for h in yazi {
    print(h)
} */

for meyve in meyveler {
    print("Sonuç 1 : \(meyve)")
}

/*
 Sonuç 1 : Yeni Elma
 Sonuç 1 : Portakal
 Sonuç 1 : Muz
 Sonuç 1 : Kiraz
 Sonuç 1 : Kivi
 */


for (indeks,meyve) in meyveler.enumerated() {
    print(" \(indeks). -> \(meyve)")
}

/*
 0. -> Yeni Elma
 1. -> Portakal
 2. -> Muz
 3. -> Kiraz
 4. -> Kivi
 */

// Silme
meyveler.remove(at: 1)
print(meyveler) // 1.indeksi siler. ["Yeni Elma", "Muz", "Kiraz", "Kivi"]

meyveler.removeAll()
print(meyveler) // []

class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Arzu", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]() // Ogrenciler sınıfından nesne oluşturdum.
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 No : 200 - Ad : Zeynep - Sınıf : 9C
 No : 300 - Ad : Arzu - Sınıf : 11Z
 No : 100 - Ad : Beyza - Sınıf : 12A
 */

// Filtreleme

var f1 = ogrencilerListesi.filter({ $0.no! > 100}) //$0. o sınıfın nesnelerini getirir.
print("Filtreleme 1")
for o in f1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 Filtreleme 1
 No : 200 - Ad : Zeynep - Sınıf : 9C
 No : 300 - Ad : Arzu - Sınıf : 11Z
 */

var f2 = ogrencilerListesi.filter({ $0.ad!.contains("yz") })
print("Filtreleme 2")
for o in f2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 Filtreleme 2
 No : 100 - Ad : Beyza - Sınıf : 12A
 */

// filtreleme her veriyi tek tek kıyaslanıyor. seçilen veri geliyor.
// Sıralamada ise 2 veri kıyaslanır. 1. veri ile 2. veri, 1.veri ile 3.veri gibi..
var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! }) // no'lar arasında büyükten küçüğe bir kıyaslama yapacak.
print("Sayısal olarak büyükten küçüğe : ")
for o in s1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 Sayısal olarak büyükten küçüğe :
 No : 300 - Ad : Arzu - Sınıf : 11Z
 No : 200 - Ad : Zeynep - Sınıf : 9C
 No : 100 - Ad : Beyza - Sınıf : 12A
 */

var s2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! }) // no'lar arasında küçükten büyüğe bir kıyaslama yapacak.
print("Sayısal olarak küçükten büyüğe : ")
for o in s2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 Sayısal olarak küçükten büyüğe :
 No : 100 - Ad : Beyza - Sınıf : 12A
 No : 200 - Ad : Zeynep - Sınıf : 9C
 No : 300 - Ad : Arzu - Sınıf : 11Z
 */

var s3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! }) // ad'lar arasında büyükten küçüğe bir kıyaslama yapacak.
print("Metinsel olarak büyükten küçüğe : ")
for o in s3 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 Metinsel olarak büyükten küçüğe :
 No : 200 - Ad : Zeynep - Sınıf : 9C
 No : 100 - Ad : Beyza - Sınıf : 12A
 No : 300 - Ad : Arzu - Sınıf : 11Z
 */

var s4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! }) // ad'lar arasında küçükten büyüğe bir kıyaslama yapacak.
print("Metinsel olarak küçükten büyüğe : ")
for o in s4 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

/*
 Metinsel olarak küçükten büyüğe :
 No : 300 - Ad : Arzu - Sınıf : 11Z
 No : 100 - Ad : Beyza - Sınıf : 12A
 No : 200 - Ad : Zeynep - Sınıf : 9C
 */

// Set Kullanımı

var meyveler1 = Set<String>()
meyveler1.insert("Elma") // ekleme yapmak için array de append metodu set te insert metodu!
meyveler1.insert("Portakal")
meyveler1.insert("Muz")
print(meyveler1) // Çıktı : ["Portakal", "Muz", "Elma"] -> karıştırarak yazmış.

meyveler1.insert("Elma")
print(meyveler1) // tekrardan eklemedi. aynı veriyi tekrar eklemez.

meyveler1.insert("Amasya Elması")
print(meyveler1) // ["Muz", "Portakal", "Elma", "Amasya Elması"] -> yeni veriyi ekledi ve tekrar karıştırarak listeledi.

for meyve in meyveler1 {
    print("Sonuç 1 : \(meyve)")
}

/*
 Sonuç 1 : Amasya Elması
 Sonuç 1 : Muz
 Sonuç 1 : Elma
 Sonuç 1 : Portakal
 */

for (indeks,meyve) in meyveler1.enumerated() { // enumerated ile indekste ekleyip index numarasına göre listeleme yapabiliyoruz. illa indeks yazmaya gerek yok onun  yerine başka şeyde yazılabilir. Anlaşılabilir olması için indeks yazdık.
    print("\(indeks). ->  \(meyve)")
}

/*
 0. ->  Amasya Elması
 1. ->  Muz
 2. ->  Elma
 3. ->  Portakal
 */

print(meyveler1.count)

var indeks = meyveler1.firstIndex(of: "Elma")
print(meyveler1)
print(indeks!)

meyveler1.remove(at: indeks!)
print(meyveler1)
print(indeks!)

meyveler1.remove("Muz")
print(meyveler1)

meyveler1.removeAll()
print(meyveler1)

// HashMap - Map - Dictionary
// index i kendimiz üretiyoruz.

var iller = [Int:String]() // Burada Int=Key , String=Value olur. Bunda özgürüz. İstediğimiz türleri koyabiliyoruz.
// Any - Java(Object) : İstediğin türü al anlamına geliyor.

//Veri ekleme

iller[16] = "Bursa" // Key=16 , Value=Bursa
iller[34] = "İstanbul"

print(iller) // Çıktı : [16: "Bursa", 34: "İstanbul"]

//Güncelleme
iller[16] = "Yeni Bursa"
print(iller) // Çıktı : [16: "Yeni Bursa", 34: "İstanbul"]

// Okuma işlemi

for (anahtar,deger) in iller {
    print("Anahtar : \(anahtar) - Değer : \(deger)")
}
/*
 Anahtar : 34 - Değer : İstanbul
 Anahtar : 16 - Değer : Yeni Bursa
 */

iller.removeValue(forKey: 16)
print(iller) //[34: "İstanbul"]

iller.removeAll()
print(iller) // [:]

// İleri Swift
// Guard : if yapısı ile aynıdır.
// İf gibi koşula göre işlem yapar.
// Guard if'in tersi gibi çalışır.
// Koşul false olduğu durumda çalışır.True durumu yoktur.
// return veya throw ifadesi ile kullanılır.Bundan dolayı genelde metod (func )içinde yer alırlar.

func kisiTanima(ad:String) {
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else {
        print("Tanınmayan kişi!")
    }
}

kisiTanima(ad: "Ahmet")

func kisiTanimaGuard(ad:String) {
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi!")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanimaGuard(ad: "Ahmet") // Merhaba Ahmet
kisiTanimaGuard(ad: "Ahmetx") // Tanınmayan kişi!

// Hata Ayıklama

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int,sayi2:Int) -> Int {
    return sayi1 / sayi2
}

let sonuc = bolme(sayi1: 10, sayi2: 2)
print(sonuc) //5

func bolme2(sayi1:Int,sayi2:Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}
do {
    let sonuc2 = try bolme2(sayi1: 10, sayi2: 0) //try yazmamızın sebebi o satırda hata olabileceğini göstermek. bazı dillerde try-catch olarak geçer. Swift dilinde do-catch olarak geçiyor.
    print(sonuc2)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez!")
}

//Pratik yöntem
let sonuc3 = try? bolme2(sayi1: 10, sayi2: 0) // try? ni koyduk. eğer bu satırda hata varsa sonuc3'ü nil yapacak. hata yoksa sonuc3'e değer aktaracak.

if let temp = sonuc3 {
    print(temp)
}else {
    print("Sayı sıfıra bölünemez!")
}
