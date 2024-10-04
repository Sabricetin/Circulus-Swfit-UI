# Circulus-Swift-UI

Bu proje, farklı renk ve gradyanlarla dairesel ilerleme göstergeleri oluşturmayı gösteren bir SwiftUI projesidir. Kullanıcı, dairelere dokunarak yüzdelerini 0% ile 100% arasında değiştirebilir.

## Özellikler

- **Üç Dairesel Gösterge**: Her biri farklı gradyan ve boyutlara sahip.
- **Etkileşimli**: Herhangi bir daireye dokunarak ilerleme durumunu 0 ile 100 arasında değiştirebilirsiniz.
- **Özelleştirilebilir Gradyanlar**: Gradyanlar, hex renk kodları kullanılarak tanımlanmıştır.

## Nasıl Çalıştırılır

1. Bu repoyu klonlayın.
2. Projeyi Xcode'da açın.
3. Projeyi simülatörde veya bağlı bir cihazda çalıştırın.

## Kod Açıklaması

- `ContentView.swift` ana görünüm yapısını içerir ve üç `Circular` bileşeniyle her biri farklı bir ilerleme dairesini temsil eder.
- Her daire için ilerleme değerleri, SwiftUI'nin `@State` değişkenleri kullanılarak yönetilir.
- Gradyanlar, `Circular` görünümüne geçirilen özel hex renk değerleriyle uygulanmıştır.

## Gereksinimler

- Xcode 15 veya üstü
- iOS 16 veya üstü
- Swift 5.9+

## Lisans

Bu proje MIT Lisansı altında lisanslanmıştır - detaylar için [LICENSE](LICENSE) dosyasına bakın.
