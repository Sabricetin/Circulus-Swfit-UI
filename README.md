# Circular Animation Uygulaması

Bu SwiftUI uygulaması, ekrandaki dairesel animasyonlara dokunarak %0 ile %100 arasında değişen doluluk oranları sunar. Renkler, hex kodlarıyla tanımlanmış gradient geçişler kullanılarak oluşturulur.

#### Özellikler

1. **Daire Animasyonları**  
   Üç daire, kullanıcı dokunuşuyla doluluk oranını %0 ile %100 arasında değiştirir. Her dairenin çizgi kalınlığı 40 birimdir ve gradient renk geçişleri hex kodları ile ayarlanır.

2. **Hex Renk Desteği**  
   Hex kodları ile renk tanımlamak için `Color` uzantısı kullanılır. Desteklenen formatlar:
   - `#RGB` (12-bit)
   - `#RRGGBB` (24-bit)
   - `#AARRGGBB` (32-bit)

#### Kullanıcı Arayüzü

- **Ana Yapı:**  
  Daireler üst üste yerleştirilmiştir, arka plan siyah renktedir.
  
- **Daireler:**  
  Üç farklı boyutta ve renkte daire, kullanıcı dokunuşuyla doluluk oranını değiştirir. Her daire, dokunulduğunda doluluk oranını değiştiren bir `onTapGesture` olayı içerir.

#### Etkileşimler

- Her daireye dokunulduğunda, doluluk oranı %0 ise %100'e, %100 ise %0'a geçer. Bu sayede kullanıcı, dairelerin doluluğunu kontrol edebilir.

#### Hex Renklerle Renk Tanımlama  
`Color` uzantısı ile hex kodları kullanılarak renkler tanımlanır. Örneğin, `#e32115` kırmızı, `#f82a8f` pembe gradient geçişi olarak kullanılır.
