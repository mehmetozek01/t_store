# T Store

T Store, Flutter kullanılarak geliştirilen bir e-ticaret mobil uygulamasıdır.

Projenin amacı; Flutter, Firebase ve GetX kullanarak modern bir mobil uygulama yapısını geliştirmek, kullanıcı işlemleri, ürün listeleme, sepet, favoriler, ödeme ekranları ve profil yönetimi gibi temel e-ticaret özelliklerini uygulamaktır.

## Özellikler

- Kullanıcı girişi
- Kullanıcı kaydı
- E-posta doğrulama
- Şifre sıfırlama
- Kullanıcı profil yönetimi
- Kullanıcı adı güncelleme
- Hassas işlemler öncesi yeniden kimlik doğrulama
- Ürün listeleme
- Ürün detay ekranı
- Kategori ve marka ekranları
- Sepet
- Favoriler
- Ödeme ekranı
- Sipariş ekranları
- Ürün değerlendirmeleri
- Açık / Koyu tema
- Firebase Authentication
- Cloud Firestore
- Responsive Flutter arayüzü

## Kullanılan Teknolojiler

- Flutter
- Dart
- Firebase
  - Authentication
  - Cloud Firestore
- GetX
- Material Design

## Proje Yapısı

~~~text
lib/
├── bindings/
├── common/
│   ├── styles/
│   └── widgets/
├── data/
│   ├── repositories/
│   └── services/
├── features/
│   ├── authentication/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   ├── personalization/
│   │   └── data/
│   │       ├── controllers/
│   │       ├── models/
│   │       └── screens/
│   └── shop/
│       ├── controllers/
│       ├── models/
│       └── screens/
├── localization/
├── utils/
│   ├── constants/
│   ├── device/
│   ├── exceptions/
│   ├── formatter/
│   ├── helpers/
│   ├── http/
│   ├── local_storage/
│   ├── logging/
│   ├── popups/
│   ├── theme/
│   └── validators/
├── app.dart
├── firebase_options.dart
├── main.dart
└── navigation_menu.dart
~~~

## Projenin Durumu

Proje aktif olarak geliştirilmektedir.

Arayüz tarafının büyük bölümü tamamlanmıştır. Firebase işlemleri, profil özellikleri, ürün verileri ve bazı uygulama fonksiyonları geliştirilmeye devam etmektedir.

## Kurulum

Projeyi klonlayın:

~~~bash
git clone https://github.com/mehmetozek01/t_store.git
~~~

Proje klasörüne girin:

~~~bash
cd t_store
~~~

Bağımlılıkları yükleyin:

~~~bash
flutter pub get
~~~

Uygulamayı çalıştırın:

~~~bash
flutter run
~~~

## Kod Kalitesi

Proje şu anda Flutter analizinden hatasız geçmektedir:

~~~text
No issues found!
~~~

## Yapılacaklar

- Firebase entegrasyonlarını tamamlamak
- Kullanıcı profil özelliklerini tamamlamak
- Profil fotoğrafı yükleme özelliğini eklemek
- Ürün verilerini backend ile bağlamak
- Sepet işlemlerini tamamlamak
- Favori işlemlerini tamamlamak
- Ödeme akışını geliştirmek
- Çoklu dil desteği eklemek
- UI/UX iyileştirmeleri yapmak
- Proje tamamlandıktan sonra ekran görüntüleri eklemek
- Release sürümünü hazırlamak

## Geliştirici

**Mehmet Veysi Özek**

Flutter Developer