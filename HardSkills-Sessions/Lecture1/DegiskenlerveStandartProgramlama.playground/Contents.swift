import UIKit


print("Hello World!")

//White Space:Kodlama yaparken daha düzenli görünmesi için Swift boşluk bırakmamızı istemektedir.
// var meyve = elma + kiraz
var ogrenciAdi = "Selin"
var ogrenciYas = 26
var ogrenciBoy = 1.64
var ogrenciBasharf = "S"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)

var urun_id:Int = 3416 // : dan sonra tipini belirttik.
var urun_ad:String = "Rolex"
var urun_adet:Int = 100
var urun_fiyat:Double = 149.99
var urun_tedarikci:String = "Rolex"

print("Ürün id : \(urun_id)") //  \() kullanımı
print("Ürün adı : \(urun_ad)")
print("Ürün adet : \(urun_adet)")
print("Ürün fiyatı : \(urun_fiyat) ₺")
print("Ürün tedarikçi : \(urun_tedarikci)")


//Constant - Sabit
var sayi = 10 //değişkeni tanımladık. var ile içeriğini daha sonra değişebilir hale getiriyoruz.(constant)
print(sayi)
sayi = 20 // burada içeriğini değiştirdik.
print(sayi)

let numara = 100
print(numara)
//numara = 40 değişkeni let ile tanımladığımız için artık değerini değiştiremiyoruz. (sabit)
//var ile değişken tanımladığımızda program kendine o değişken için çok fazla yer ayırıyor. bu da hafıza konusunda sıkıntılara yol açabiliyor. let ile değişken tanımladığımızda ise sadece verilen değer için yer kapladığından dolayı hafıza konusunda daha avantajlı oluyor. Eğer daha sonra başka değer tanımlamayacaksak değişkeni let ile tanımlamak daha iyi olacaktır.

// Tür Dönüşümü
// 1.Sayısaldan sayısala
var i = 42
var d = 56.78 // bu değeri 56 ve 78 olarak ayrı ayrı tutmaya çalıştığı için bunun ondalıklı sayı olduğunu algılayamıyor. bu yüzden ayrı bir kod yazılması gerekiyor.
var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1) // 42.0
print(sonuc2) // 56 -> ondalıklı olarak algılayamadı. Noktadan sonrasını silerek Int e e çevirdi.
// 2.Sayısaldan metine
var sonuc3 = String(i) // "42"
var sonuc4 = String(d) // "56.78"
var sonuc5 = "Kimyasal oran : \(d)"

print(sonuc3)
print(sonuc4)
print(sonuc5)

// 3.Metinden Sayısala
// Kullanıcının girdiği şeyi direkt sayısala çevirmek riskli. 46 yazıp yanlışlıkla diyelim ki . ya da boşluk koyduğunda program çöker.
var yazi = "500T" // 500 yazarsa sorun yok ama 500T yazarsa sonuc6 nil olarak döner. Bu da uygulamanın çökmesine sebep olur. rakam dışında bir şey yazdığı zaman onu sayısala çeviremeyeceği için uyg çökecek.
// Bu yüzden if else yapısıyla kontrol ederek metinden sayısala dönüştürmeyi yapmamız gerek. Int e çevirebiliyorsa sonuc6 yı yazdıracaktır. Çeviremiyorsa else kısmına geçip oradaki print i basacaktır.
if let sonuc6 = Int(yazi){
    print(sonuc6)
}else{
    print("Girilen veri hatalı!")
}

// Tuples (Çoklu değişken oluşturma)
var kisi = ("Selin","Aslan") // ilk indeks 0. indeks,2.si ise 1.indeks
var ad = kisi.0 // 0.indeksi çağırıyor.
var soyad = kisi.1 // 1.indeksi çağırıyor.
print(ad)
print(soyad)


var nokta = (x:10,y:20) // indeks yerine x ve ye tanımladık.
print(nokta.x)
print(nokta.y)

var hataMesaji = (404,"Not Found")

var (kod,mesaj) = hataMesaji // var kısmında 0. indeksi kod, 1. indeksi de mesaj olarak tanımladı. 0 yada 1 olarak çağırmak istemiyorsak böyle de olabilir. Bazı durumlar için daha anlaşılır olur.
print(kod)
print(mesaj)

//Karşılaştırma Operatörleri
var x1 = 60
var x2 = 50

var y1 = 70
var y2 = 80

print(x1 == x2) //false
print(x1 != x2) //true (! işareti NOT yani var olan işlemi tersler.)
print(x1 > x2) //true
print(x1 >= x2) //true
print(x1 < x2) //false
print(x1 <= x2) //false
// Or (||) (veya) : false-false : false diğer durumlarda true
print(x1 > x2 || y1 > y2) // T-F:true olacaktır.
// And (&&) (ve) : true-true : true diğer durumlarda false
print(x1 > x2 && y1 > y2) // T-F:false olacaktır.
// if kullanımı
var yas = 19
var isim = "Selin"

if yas >= 18{ // if in yanındaki şart true ise o kısım çalışır. true değilse varsa else if sonra else durumuna geçer.
    print("Reşitsiniz.")
}else{
    print("Reşit değilsiniz.")
}

if isim == "Selin"{
    print("Merhaba Selin") // true olduğu için bunu çalıştırdı. false olsaydı else if kısmını kontrol edecekti. o da false ise else kısmını direkt yazdıracaktı.
}else if isim == "Aslan"{
    print("Merhaba Aslan")
}else{
    print("Tanınmayan kişi!")
}

var ka = "admin"
var s = 12345

if ka == "admin" && s == 12345 { // ikisi de uyuştuğu için if kısmını çalıştırdı.
    print("Hoşgeldiniz!")
}else{
    print("Hatalı giriş!")
}

var sinif = 8
if sinif == 9 || sinif == 10{ // false-false:false olduğu için if çalışmayacak.
    print("Snıf 9 veya 10 dur.")
}else{ //sınıf 8 e eşit olduğu için if kısmını kontrol edip direkt else i yazdıracak.
    print("Snıf 9 veya 10 değildir.")
}

//Switch Kullanımı
var gun = 6 // case ler arasında 6 yı arayıp onu print edecek.
switch gun {
    case 1:
        print("Pazartesi")
    case 2:
        print("Salı")
    case 3:
        print("Çarşamba")
    case 4:
        print("Perşembe")
    case 5:
        print("Cuma")
    case 6:
        print("Cumartesi")
    case 7:
        print("Pazar")
    default:
        print("Böyle birgün yok!")
}

//Döngüler
// belirli kodları tekrar tekrar çalıştırmak asıl amaçtır.
// for in: kaç kere çalışacağı baştan belli olan döngüler diyebiliriz.
// while : koşula bağlı döngüdür. if yapısının tekrarlı çalışan hali denebilir.
//1,2,3 değerlerini görüntülemek istiyorum. Yani 1 ile 3 arasındaki değerler.(for örneği)
for i in 1...3{
    print("Döngü 1: \(i)")
}

// 10 ile 20 arasında 5'er artış
for a in stride(from: 10, through: 20, by: 5) { // through yerine to kullanırsak son değeri göremeyiz.
    print("Döngü 2: \(a) ")
}

//20 ile 10,5 er azalış
for b in stride(from: 20, through: 10, by: -5) { // through yerine to kullanırsak son değeri göremeyiz.
    print("Döngü 3 : \(b)")
}

//1,2,3 while döngüsü
var sayac = 1
while sayac < 4 {
    print("Döngü 4 : \(sayac)")
    sayac+=1 //sayac = sayac + 1
}

//break - continue
// break : döngüyü tamamen bitirir.
// continue : o işlemi bir başa sarıyor.
for i in 1...5 {
    if i == 3 {
        break //return
    }
    print("Döngü 5 : \(i)")
}
//Çıktı : Döngü 5 : 1 , Döngü 5 : 2 -> 3 olduğu anda döngüyü bitirir.
for i in 1...5 {
    if i == 3 {
        continue // 3 durumunu atladı.
    }
    print("Döngü 6 : \(i)")
}

// Çıktı : Döngü 6 : 1 , Döngü 6 : 2 , Döngü 6 : 4 , Döngü 6 : 5 -> 3'te continue olduğu için 3'ü atlayarak geçti.
// Optional - Nullable - Null safety
// optional : bir ifadenin null olma kontrolünü sağlamaktır.
// bir uygulamanın çökmesi araştırmalara göre genellikle işlemin null (nil) olması durumundan kaynaklanır.
var x = "merhaba"

// boş değişken oluşturma
var str:String? = nil // uzun hali
var str1:String? // ? kullanarak bu ifade nil olabilir demek istiyoruz.
str1 = "Hello"

if str1 != nil{
    print(str1) // Çıktı:  Optional("Hello")
}else{
    print("str1 nil değer içeriyor.")
}


if str1 != nil{
    print(str1!) // Çıktı: "Hello"  -> ! işareti ile optional unwrapping yaparız
}else{
    print("str1 nil değer içeriyor.")
}

// Optional binding
if let temp = str1 { // burada if let ile yaptığımızda let özelliğinden dolayı str1 e başka değer ataması yapamayız. Bu bir dezavantaj.
    print(temp)
}else{
    print("str1 nil değer içeriyor.")
}


if var temp = str1 { // var ile kullandığımızda temp e ve dolayısıyla str1 e yeni bir değer atayabildik. yine de genellikle if let kullanılır.
    print(temp)
    temp = "Hello World"
    print(temp)
}else{
    print("str1 nil değer içeriyor.")
}
