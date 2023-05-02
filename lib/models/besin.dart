import 'package:flutter/material.dart';

class Besin{
  String name;
  String category;
  String description;
  AssetImage image;
  String material;
  String preparation;

  Besin(
  {
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.material,
    required this.preparation,
});

}
List<Besin> besinList = [

  Besin(
      name: 'Yağ Yakıcı Kış Cacığı',
      category: 'Yoğurtlu Sağlıklı Yemek Tarifleri;',
      description: 'Fit yemek tarifleri denilince akıla tatsız, tuzsuz tarifler geliyor olabilir. Halbuki sebzelerle ne mükemmel tatlar yaratılabilir. Örneğin; Kış Cacığı gibi. Diyet yemek tariflerinin en popüleri ve en lezzetlisi kış cacığı ile sağlıklı yemek tarifi yapıp akşamları keyifli hale getirebilirsiniz.',
      image: AssetImage('assets/images/yagyakici.jpg'),
      material: '¼ göbek salata,2 salatalık veya 3 kaşık rendelenmiş kereviz,2 çorba kaşığı yoğurt,Yarım limonun suyu, kabuğunun rendesi,1 dilim beyaz peynir,1 tatlı kaşığı  sirke,½ çay k Toz karabiber,½ tatlı k toz nane,1 çorba k chia tohumu,Taze nane, dereotu, maydanoz,İsteğe bağlı 1 tatlı kaşığı Kabak çekirdeği,1 tatlı kaşığı Sızma Zeytinyağı',
      preparation:'Derin bir kaseye yoğurt, tuz, limon kabuğu rendesi ve suyunu alın. Daha sonra beyaz sirke, karabiber, kuru nane ve zeytinyağını ekleyin. Hazırladığınız bu karışımı iyice çırpıp bekletin. Top salatayı incecik kıyın, salatalıkları rendeleyin. Sonrasında sert bir beyaz peyniri doğrayın. Tüm malzemeleri sosun içine ekleyin. Ardından üzerine taze nane, dereotu, maydanozu ekleyin. Çıtır kıtır için chia ya da haşhaş tohumu serpin. Son olarak isteğe bağlı olarak kabak çekirdeği kavurun ve ekleyin. Hepsini karıştırın ve servis edin.  '
  ),
  Besin(
      name: 'Biberiyeli Tavuk',
      category: 'Tavuklu Sağlıklı Yemek Tarifleri;',
      description: 'Fırınsız yemek tarifleri denilince ilk akıla gelen sağlıklı yemek tariflerinden biri biberiyeli tavuk. Hem düşük kalorili hem de çok sağlıklı olan bu tarif değişik yemek tarifleri arayanların hoşuna gidecektir.',
      image: AssetImage('assets/images/biberlitavuk.jpg'),
      material: '(2 Porsiyon) 200 gram tavuk göğüs eti,1 adet limon,1-2 tutam toz biberiye,1 yemek kaşığı zeytinyağı,Tuz, pul biber',
      preparation:'Limon suyu, sarımsak, biberiye, zeytinyağı, tuz ve pul biberi karıştırın. Tavuk etlerini iri küpler şeklinde doğrayın. Sonrasında limon suyu karışımına ilave ederek buzdolabına kaldırın. (En az 2 saat, en fazla 1 gece marine edilir.) Tavukları şişlere takıp ondan sonra ortalarına bir dilim limon takın. Izgara tavanızı ısıtıp ve şişlerinizi çevirerek pişirin.'
  ),
  Besin(
      name: 'Portakallı Light Kereviz',
      category: 'Kerevizli Sağlıklı Yemek Tarifleri;',
      description: 'Akşam yemeği tariflerinde bugün etsiz yemek tariflerinin başında yer alan kereviz var. Normalde çok sevmediğiniz kerevizi bu tarifle her akşam yapmak isteyebilirsiniz.',
      image: AssetImage('assets/images/kereviz.jpg'),
      material: '(2 Porsiyon) 2 adet kereviz,1 adet havuç,1 adet kuru soğan,1 adet limon,2 adet portakalın suyu,1 yemek kaşığı zeytinyağı,Tuz',
      preparation:'Kerevizleri soyduktan sonra kare kare doğrayın. Sonrasında üzerlerine 1 adet limon suyu sıkın. Havuçları yuvarlak şekilde doğrayın. Ardından tencereye yağ ekledikten sonra doğranmış soğanı ekleyin. Sonrasında üzerine kerevizi ve limonu ilave edin. Aynı şekilde havucu da ilave edin. Taze sıkılmış portakal suyu ve tuz ile kısık ateşte pişirin. Maydanoz yaprakları ile servis yapabilirsiniz.',
  ),
  Besin(
      name: 'Köz Biberli Marul Salatası',
      category: 'Marullu Sağlıklı Yemek Tarifleri;',
      description: 'Akşam yemeği önerileri denilince minik doğrama ve karıştırma işleri ile 10 dakikada hazır olabilecek en pratik salata tarifi köz biberli marul salata. Sağlıklı yemek tariflerini yaparken dikkat edilmesi gereken en önemli nokta; çeşitlilik ve renklerdir. Sebzelerle posayı, yoğurtla proteini, kalsiyumu ve nohutla proteini aldığınız yani mükemmel uyumlu aynı zamanda değişik salata tarifi seçtiniz.',
      image: AssetImage('assets/images/kozbiber.jpg'),
      material: '2 közlenmiş biber,5 yaprak marul,5 yemek kaşığı haşlanmış nohut,3 kaşık yoğurt,Sarımsak-Sumak-Nane-İstediğiniz Baharatlar',
      preparation:'Köz biber ve marulu spagetti gibi ince incecik kesin ve karıştırın. Sonrasında üzerine yoğurt, nohut, sarımsak ve baharatları ekleyin. Ve tarifiniz hazır, afiyetle tüketebilirsiniz.'
  ),
  Besin(
    name: 'Fırında Kabak Köfte',
    category: 'Kabaklı Sağlıklı Yemek Tarifleri;',
    description: 'Diyet yemek tarifleri denilince akıllara ilk gelen sebze; Kabak. Kabaklı tarifler denilince de en lezzetlisi fırında kabak köftedir.',
    image: AssetImage('assets/images/kabak.jpg'),
    material: '250 gram kabak,1 adet yumurta,1 su bardağı yulaf ezmesi,2 dilim beyaz peynir,1/4 demet dereotu,Tuz, baharat',
    preparation:'Kabağı rendeleyin. Avuç içinizde 3-4 kere sıkarak suyunu iyice süzün. Sonrasında kabağa peynir, yulaf ezmesi, yumurta ve baharatları ekleyin. Yulafın şişmesi ve köfte harcının kıvam alması için 10 dakika dinlendirin. Ardından kaşık yardımı ile parçalar alıp avuç içinizde yuvarlayın. Ardından yağlı kâğıt serdiğiniz fırın tepsisine tek tek yerleştirin. Son olarak önceden ısıttığınız 200 derecelik fırında 20 dakika pişirin.',
  ),
  Besin(
    name: 'Tatlı Tavuk Parçaları',
    category: 'Tavuklu Sağlıklı Yemek Tarifleri;',
    description: 'Pratik tavuk yemeği tarifi olsun ama farklı yemek tarifi olsun derseniz; tatlı tavuk parçaları.',
    image: AssetImage('assets/images/tatlitavuk.jpg'),
    material: '(4 Porsiyon) 450 gram derisiz tavuk kanadı,3 yumurta akı,2 su bardağı galeta unu,2 yemek kaşığı hardal,1 tatlı kaşığı acı biber püresi,1 yemek kaşığı bal',
    preparation:'Fırını önceden 220°C’de ısıtın. Geniş bir tepsiye yağlı kağıdı serin. Ardından sığ bir kasenin içinde yumurta aklarını biraz çırpın. Bir tabağın içine galeta ununu yerleştirin. Tavukları önce tuz ve biberle, ardından galeta unuyla yumurta akına batırın. Sonrasında fırın tepsisine dizmeye başlayın. Tavukları 10-12 dakika boyunca pişirin (dışı kahverengileşene ve tavuk sıkılaşana kadar). Geniş bir kapta hardal, acı sos ve balı karıştırın. Ardından sosu tavuk parçalarına eşit olarak dağıtarak servis edin. Afiyet olsun.',
  ),
  Besin(
    name: 'Çin Usulü Tavuk Salatası',
    category: 'Lahanalı Sağlıklı Yemek Tarifleri;',
    description: ' ',
    image: AssetImage('assets/images/cintavuk.jpg'),
    material: '(4 Porsiyon) 1 orta baş beyaz lahana,½ orta baş kırmızı lahana,½ yemek kaşığı şeker,2 su bardağı doğranmış tavuk göğsü,1/4 su bardağı sirke,1 su bardağı taze kişniş yaprağı,2 orta boy mandalina veya 1 adet portakal,¼ su bardağı badem,Tuz ve karabiber',
    preparation:'Büyük bir kasenin içerisine şekeri koyun. Lahanaları ince şeritler halinde dilimleyin. Ardından dilimlediğiniz lahanaları şekeri koyduğunuz kaba ekleyin. Eğer tavuklar soğuksa ılık hale gelinceye ısıtın. Sonrasında ısıttığınız tavukları ve ardından bütün malzemeleri lahanaların üzerine ekleyin. Dilerseniz salatanızı kroton ekmek ve değişik baharatlarla servis edebilirsiniz. Afiyet olsun',
  ),
  Besin(
    name: 'Denge Çorba',
    category: 'Nohutlu Sağlıklı Yemek Tarifleri;',
    description: 'Ucuz ve sağlıklı yemek tarifleri denilince ilk akıla gelen tarifler hep çorba tarifleri olur. Kabaklı tariflerden olan hatta içinde kereviz, nohut ve bol baharat bulunduran bu sebze çorbası en sağlıklı yemek tariflerinden biri.',
    image: AssetImage('assets/images/denge.jpg'),
    material: '(2 Porsiyon) 1 kabak,1/2 kereviz,1 havuç,1 avuç haşlanmış nohut,1 tatlı kaşığı zeytinyağı,1 orta boy soğan rendesi,1 çay kasıgı toz zencefil,1 çay kaşığı zerdeçal,1 tatlı kaşığı kimyon,1 çay kaşığı pulbiber',
    preparation:'İstediğiniz kadar su ve ekstra sevdiğiniz baharatlarla pişirip blenderdan geçirin. Sonrasında 20 gr labne ya da 1/2 paket soya kreması ekleyin. Ve çorbanız hazır. Afiyet olsun.',
  ),
  Besin(
    name: 'Kabak Tabanlı Pizza',
    category: 'Kabaklı Sağlıklı Yemek Tarifleri;',
    description: 'Kabaklı tariflerin en dikkat çekeni, son dönemlerde popüler olan sebze tabanlı pizzalardan biri; Kabak Tabanlı Pizza. Diyet yemek tarifleri hep tatsız tuzsuz olan diyenler önce bu tarifleri bi denesin.',
    image: AssetImage('assets/images/pizza.jpg'),
    material: '(2 Porsiyon) Taban için; 1 adet kabak (rendelenmiş),1 yemek kaşığı yulaf unu veya kepeği,1 tutam kekik,1 adet yumurta,Tuz, Karabiber  Sos için; 2 adet doğranmış domates,1 diş sarımsak,Yarım yemek kaşığı domates salçası,3 yaprak fesleğen,Tuz, Karabiber,1 yemek kaşığı zeytinyağı Üzeri için; 50 gram kaşar peyniri,8-10 adet zeytin,1 adet domates,4 yaprak fesleğen',
    preparation:'Taban için: Rendelenmiş kabakların suyunu sıkarak derin bir kaba alın. Üzerine kalan diğer taban malzemelerini ekleyip hamuru hazırlayın. 22-23 cm çapında krep tavasını tereyağ ile yağlayın. Ardından karışımı tavanın ortasına dökerek eşit kalınlıkta yayın. Tava ısınıncaya kadar yüksek ateşte daha sonra kısık ateşte pişirin. (hamur tavayı bırakıncaya kadar) Rengi kızarıp çıtır oluncaya kadar kızartın. Sos için: Bir tencerede sarımsakları soteleyin. Salça ekledikten sonra kokusu çıkana kadar kavurun. Domates, tuz ve karabiber ilave edip suyunu çekene kadar pişirin. Sonrasında fesleğeni de ekledikten sonra rondodan geçirin. Pizzanın Hazırlanması: Hazırlanan pizza tabanını ısıya dayanıklı bir pizza altlığına alın. Sonrasında üzerlerine eşit şekilde domates sosundan sürün. Fesleğen ve dilim zeytini de ekleyin. Ardından bir çeriyi tam ortaya, diğerlerini eşit aralıklarla kenarlara sıralayın. Üzerine peynir serperek 180 derece fırında 10-15 dakika pişirin. Dilimleyerek sıcak servis edin.',
  ),
  Besin(
    name: 'Sebze Lazanyası',
    category: 'Kabaklı Sağlıklı Yemek Tarifleri;',
    description: '',
    image: AssetImage('assets/images/sebzelilazanya.png'),
    material: '(6 Porsiyon) 2 adet patlıcan,2 adet kabak,250 gram lor peyniri ve süzme peynir karışımı,2 adet yumurta,Domates sos,3-4 adet kapya biber (küçük kare doğranmış),1 büyük kırmızı kuru soğan (küçük kare doğranmış),Yaklaşık 2 su bardağı rendelenmiş mozzarella',
    preparation:'Patlıcanların ve kabakların kabuklarını soyun. uzunlamasına şeritler halinde incecik dilimleyin. Sebzeleri yağsız olarak çok yumuşatmadan alt üst ızgara yapın. Peynir karışımı içine 2 adet yumurta kırarak karıştırın. Sonrasında tepsiyi yağlayıp ızgara yapılmış patlıcanları bir sıra dizin. Üzerine sırasıyla yumurtalı peynir karışımı, kapya biber, soğan, mozzarella domates sosu ekleyin. İkinci sırada da aynı işlemi tekrarlayın. Üçüncü sırada aynı işlemi kabak ile tekrarlayıp üzerine dereotu serpin. Dördüncü sırada kabak, dereotu ve üzerine domates sos, mozzarella ile kaplayın. Tepsinin üzeri alüminyum folyo ile kapatarak 200 derece ısıtılmış fırına verin. (15-20 dk) Fırından çıkınca kare kare dilimleyerek sıcak servis edin. Serviste üzerine parmesan peyniri, fesleğen veya maydanoz gibi taze kıyılmış otlar serpebilirsiniz.',
  ),


];

