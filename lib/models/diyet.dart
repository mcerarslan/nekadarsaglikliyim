import 'package:flutter/material.dart';

class Diyet {
  String baslik;
  String aciklama;
  String ikincibaslik;
  String ikinciaciklama;
  AssetImage image;
  String kaynakca;
  Diyet (
  {
   required this.baslik,
    required this.aciklama,
    required this.ikincibaslik,
    required this.ikinciaciklama,
    required this.image,
    required this.kaynakca
});
}
List <Diyet> diyetList = [
  Diyet(
      baslik: 'Beslenme İpuçları',
      aciklama: ' Eski alışkanlıklarınızı bıraktığınızı ve yeme alışkanlıklarınızı değiştirdiğinizi düşünebiliyor musunuz? Alışkanlıklarınızdaki her bir küçük değişiklik tartıda size ödül olarak geri dönecek ve sizi istediğiniz kiloya daha çok yakınlaştıracaktır. Sürdürülebilir şekilde kilo vermek her şeyden önce bir tutum meselesidir. Aşağıdaki ipuçları zayıflama yolculuğunuzda size destek olabilir; \n \n • Kahvaltıda basit ve işlenmiş karbonhidratlardan uzak durun. Un ve şeker gibi karbonhidratların glisemik indeksi yüksektir ve kan şekerinizi hızla yükseltir.(1) Buna karşılık kan şekeriniz aynı şekilde hızla düşer. Bu durumda tekrar acıkırsınız ve daha çok yemek istersiniz. Bu nedenle tam buğday ekmeği, tam buğdaylı müsli veya gevrekler gibi karbonhidratlar idealdir. Tam tahıllar sadece daha çok vitamin ve mineral içermez aynı zamanda sizi daha uzun süre tok tutar.(2) \n \n • Kilo vermek üzereyseniz sabah karbonhidratsız fazlar çok daha etkilidir. Bu şekilde vücut daha fazla miktarda peptid YY salgılar.(3) Bu hormon midede üretilir ve iştahın azalmasına etki eder.(4) \n \n • Şeker pek çok gıdada bulunur ve vücuda kısa süreli bir enerji verir. Fakat bu enerji yağ olarak depolanır.(5) Bu nedenle kilo vermek isteyenler şeker tüketimine çok dikkat etmelidir. \n \n • Yemekten keyif alınan durumlarda beyinde dopamin ve serotonin salgılanır. Fakat bunun alışkanlık etkisi olabilir. Eğer kendinize sürekli ödül olarak gıda verirseniz istenen etkiye ulaşmak için giderek daha fazlasını istersiniz. Bu da kilo almaya neden olur. Gıdanın ödül olarak algılanması başka şekillerde motive olamayanlar arasında daha yaygındır. Bu davranışları kırmak için size keyif verecek yeni hobiler edinebilirsiniz. Belki de stresten dolayı yemeğe yöneliyorsunuzdur. Bu durumda sıkıntınızın nedenlerini ortadan kaldırmak en iyisi olacaktır. \n \n • Alışverişe gittiğiniz zaman süpermarketlerde veya pastanelerde iştah açıcı raflar ve vitrinler ile karşılaşabilirsiniz. Alışverişe çıkmadan önce yemek yiyip sonra yemeklerinizi planlayabilirsiniz. Market için alışveriş listenizi karnınız tokken yapabilirsiniz. Evden çıkmadan alışveriş listeniz olduğundan emin olup listede olmayan hiçbir şeyi almayın. \n \n • Yemek tabağı olarak küçük tabak kullanabilirsiniz. Çünkü bu, porsiyonlarınızı daha büyük gösterir. Bu basit numara ile vücudunuzun tamamen tok hissetmesini sağlayabilirsiniz. \n \n • Yemeğinizi oturur şekilde yiyin ve yemeğe konsantre olun. Dikkat dağıtıcı unsurlar doygunluk hissini almanızı önleyebilir. \n \n • Yeterli uyku sağlıklı bir beden için mutlaka gereklidir. Uyku ve kilo arasında hem hormonal hem davranışsal bir ilişki vardır. Yetersiz uyku (6 saatten az) fazla kilo ve obezite riskini artırmaktadır.(6) ',
      ikincibaslik: '',
      ikinciaciklama: '',
      image: const AssetImage('assets/images/beslenmeipucu.png'),
      kaynakca: '1. Türkiye Diyabet Vakfı. Retrieved August 24, 2019, from https://www.turkdiab.org/bilgiler.asp?lang=TR&id=84 \n2. Jonnalagadda SS, Harnack L, Liu RH, et al. Putting the whole grain puzzle together: health benefits associated with whole grains--summary of American Society for Nutrition 2010 Satellite Symposium. J Nutr. 2011;141(5):1011S–22S. doi:10.3945/jn.110.132944 \n3. Essah PA, Levy JR, Sistrun SN, Kelly SM & Nestler JE ( 2007). Effect of macronutrient composition on postprandial peptide YY levels. J Clin Endocrinol Metab 92, 4052– 4055. \n4. Karra, E. , Chandarana, K. and Batterham, R. L. (2009), The role of peptide YY in appetite regulation and obesity. The Journal of Physiology, 587: 19-25. doi:10.1113/jphysiol.2008.164269. \n5. University of Utah. Retrieved August 24, 2019, from https://healthcare.utah.edu/the-scope/shows.php?shows=0_7frg4jjd \n6. Leger D, Bayon V, de Sanctis A. The role of sleep in the regulation of body weight. Mol Cell Endocrinol. 2015 Dec 15;418 Pt 2:101-7.'
  ),
  Diyet(baslik: 'Düşük kalorili diyet',
      aciklama: ' Düşük kalorili (düşük enerjili) diyet, vücut ağırlığı kontrolü için diyetin yerini alan gıdalarla yapılır. Yeterli protein, yağ asitleri, karbonhidratlar, vitaminler ve minerallerden oluşurken, günde alınan toplam kalori 800 – 1200 kcal’dır.(1) \n\n Yağ dokusu, vücuda geri sunulmak üzere yoğun enerji içeren yağ depolarıdır. Yağ dokusu, harcanan enerji ile kıyaslandığında vücuda alınan fazla kalorinin göstergesidir.(2) Bu yüzden mevcut klinik rehberler fazla kilo durumu ve obezite için makul kalori kısıtlamalarını ve egzersizle birlikte yaşam tarzı değişikliğini önermektedirler.(3) \n\n Egzersizle birlikte veya tek başına kalori kısıtlaması insülin direncini kırar(4). Ayrıca kalori kısıtlanmasının yüksek tansiyonun (yüksek kan basıncının) düşürülmesinde etkileri bulunmaktadır(5). Bunlarla beraber uyku apnesi sendromunda kilo verilmesiyle olumlu sonuçlar elde edilmektedir. Klinik çalışmalarda uyku apnesi sendromu (uyku sırasında nefessiz kalma) gerilemiş hatta bazılarında tamamen kaybolmuştur.(6) \n\n Bu şekilde bir diyet uygulamak için doktor veya diyetisyeninize danışınız.',
      ikincibaslik: '',
      ikinciaciklama: '',
      image: const AssetImage('assets/images/dusukkalori.jpg'),
      kaynakca: '1. Türk Gıda Kodeksi Vücut Ağırlığı Kontrolü İçin Diyetin Yerini Alan Gıdalar Tebliği (Tebliğ No: 2019/15).\n 2. Singh P., Kesharwani RK, Keservani RK. 6 - Protein, Carbohydrates, and Fats: Energy Metabolism. Sustained Energy for Enhanced Human Functions and Activity 2017, Pages 103-115.\n 3. Catenacci VA, Pan Z, Ostendorf D, Brannon S, Gozansky WS, Mattson MP, Martin B, MacLean PS, Melanson EL, Troy Donahoo W. A randomized pilot study comparing zero-calorie alternate-day fasting to daily caloric restriction in adults with obesity. Obesity (Silver Spring). 2016 Sep;24(9):1874-83.\n 4. Larson-Meyer DE, Heilbronn LK, Redman LM, et al. Effect of calorie restriction with or without exercise on insulin sensitivity, beta-cell function, fat cell size, and ectopic lipid in overweight subjects. Diabetes Care. 2006;29(6):1337–1344. doi:10.2337/dc05-2565.\n 5. Nicoll R, Henein MY. Caloric Restriction and Its Effect on Blood Pressure, Heart Rate Variability and Arterial Stiffness and Dilatation: A Review of the Evidence. Int J Mol Sci. 2018;19(3):751. Published 2018 Mar 7. doi:10.3390/ijms19030751. \n 6. Cowan DC, Livingston E. Obstructive sleep apnoea syndrome and weight loss: review. Sleep Disord. 2012; Volume 2012, Article ID 163296.'
  ),
  Diyet(baslik: 'Ketojenik diyet',
      aciklama: 'Ketojenik diyet oldukça düşük karbonhidrat, daha yüksek oranda yağ ve yeterli protein içeren bir diyet türüdür. Düşük seviyede karbonhidrat tüketimi ile yağ yakarak kilo vermek hedeflenir.',
      ikincibaslik: 'KETOZİS NEDİR?',
      ikinciaciklama: ' Ketozis, vücut yağ depolarının azalmasına yol açtığı metabolik bir reaksiyondur. Vücut, birincil olarak karbonhidrat (glikoz) kullanımından, enerji kaynağı olarak yağ yakımı sonucu ortaya çıkan keton cisimlerini kullanır. \n\n Ketozise geçmeden önce aç hissedebilirsiniz ve yorgunluk, konsantrasyon eksikliği, mide bulantısı ve baş ağrısı gibi bazı yan etkiler yaşayabilirsiniz. Bu yan etkiler yaklaşık 3 gün sürebilir ve çoğu semptom genellikle 4-6 güne kadar geçer. “3 gün kuralı” olarak adlandırdığımız şey budur. İlk 3 günün ardından, enerjide artış ve iştahta azalma yaşayarak tutarlı ve başarılı bir zayıflama yolculuğuna başlayabilirsiniz. \n\n Vücut ketozise girdiğinde, enerji için kullanmadığı fazla ketonlar idrar ve nefes ile atılır. İdrar ketonları, keton çubukları kullanılarak ölçülebilir. Alternatif olarak, kan monitörleri ve nefes analizörleri de keton seviyelerini ölçmek için kullanılabilir. Bu konuda doktorunuzdan destek alıp gerekli keton testini yaptırabilirsiniz. \n\n Ketozu tetiklemek için gereken karbonhidrat miktarı birkaç faktöre bağlıdır. Aktivite seviyesine ve sıvı alımına bağlı olarak günden güne değişebilir. 50-70 g karbonhidrat içeren bir diyetin genellikle keton üretecek kadar düşük olduğu kabul edilir. Ancak keton üretimini garanti eden kesin bir seviye yoktur. \n\n Bu şekilde bir diyet uygulamak için doktor veya diyetisyeninize danışınız.',
      image: const AssetImage('assets/images/keto.jpg'),
      kaynakca: ' 1. Iacovides S, Meiring RM. The effect of a ketogenic diet versus a high-carbohydrate, low-fat diet on sleep, cognition, thyroid function, and cardiovascular health independent of weight loss: study protocol for a randomized controlled trial. Trials. 2018 Jan 23;19(1):62\n 2. Włodarek D. Role of Ketogenic Diets in Neurodegenerative Diseases (Alzheimers Disease and Parkinsons Disease). Nutrients. 2019 Jan 15;11(1). pii: E169.\n 3. Dashti HM, Mathew TC, Hussein T, et al. Long-term effects of a ketogenic diet in obese patients. Exp Clin Cardiol. 2004;9(3):200–205.\n 4. Paoli A, Bosco G, Camporesi EM, Mangar D. Ketosis, ketogenic diet and food intake control: a complex relationship. Front Psychol. 2015 Feb 2;6:27.\n 5. Masood W, Uppaluri KR. Ketogenic Diet. [Updated 2019 Mar 21]. In: StatPearls [Internet]. Treasure Island (FL): StatPearls Publishing; 2019 Jan-. Available from: https://www.ncbi.nlm.nih.gov/books/NBK499830/\n 6. Leger D, Bayon V, de Sanctis A. The role of sleep in the regulation of body weight. Mol Cell Endocrinol. 2015 Dec 15;418 Pt 2:101-7.',
  ),
  Diyet(baslik: 'Intermittent Fasting',
    aciklama: ' Obezite görülme sıklığının arttığı günümüzde, kilo kontrolü için uygulanan ilk yöntem, günlük kalori alımının sınırlanmasıdır(1). Bu klasik yaklaşımda, diyet programının her gün izlenmesinin zorluğu sebebiyle hasta uyumunun düşük olduğu görülmüştür(2). Aralıklı oruç diyeti (intermittent fasting, oruç diyeti veya 16 saat diyeti), klasik diyet yöntemlerine alternatif olarak ortaya çıkan ve gittikçe popülerlik kazanan bir diyet türüdür(3).\n\n Yapılan çalışmalarda, aralıklı oruç diyetinin kilo vermede etkili olduğu, vücuttaki yağ miktarını, LDL (düşük dansiteli lipoproteinler, “kötü” kolesterol) ve trigliserid seviyelerini anlamlı şekilde azalttığı görülmüştür(4). Kısa süreli çalışmalarda, katılımcıların aralıklı oruç sayesinde 2-3 aylık süreçte %3 ila %7 arasında kilo verdikleri, kolesterol, trigliserid, kan basıncı ve insülin hassasiyeti konularında iyileşme gösterdikleri görülmüştür(3,5-11). Bununla birlikte, başka araştırmalarda aralıklı oruç diyeti ile kalori alımını kısıtlayan diğer diyet türleri karşılaştırıldığında, aralıklı oruç diyetinin hasta uyumu, kilo verilmesi, kilonun korunması veya kardiyolojik koruma konularına klasik diyet yöntemlerine kıyasla bir üstünlüğü olmadığı görülmüştür(1).\n\nBeslenme ve Oruç Esnasında Vücudumuzda Neler Olur?\n\n Beslendikten sonra, tüketilen gıdalar sindirim sistemimiz tarafından sindirilir. Protein ve karbonhidratlar yapıtaşlarına bölünürler (sırasıyla amino asitler ve glikoz). Yağlar (lipidler) ise fiziksel olarak küçük damlacıklara ayrıştırılırlar. Amino asitler ve glikoz kan yoluyla, lipidler ise lenf sistemi ile taşınır ve hedeflerine varırlar. Beslenmenin hemen ardından salgılanan insülin sayesinde kandaki glikoz hücrelerin içerisine alınır ve glikojen veya yağ olarak saklanır. \n\n Oruca başlanan ilk saatlerde kan şekeri düşer ve glukagon adlı hormon salgılanır. Glukagon hormonu, insülinin tam tersi etki göstererek enerji ihtiyacının karşılanması için öncelikle dokularda depolanan glikojenin yıkılarak glikoza dönüşmesini ve kana karışmasını sağlar. Sonra da aynı işlem yağlara da yapılır ve yağlar parçalanarak glikoza dönüştürülür. Açlık durumunun devam etmesi durumunda da vücudun depoladığı yağlar parçalanır ve enerji kaynağı olarak kullanılır.',
    ikincibaslik: 'Aralıklı Oruç Nasıl Yapılır?',
    ikinciaciklama: ' Aralıklı oruç diyeti yapmaya karar vermeden önce hekiminiz ve diyetisyeninizle görüşmelisiniz. Aralıklı oruç diyeti herkese uygun değildir. Özellikle Tip I diyabet hastaları, tansiyon hastaları, hamileler ve emziren annelerin bu diyeti uygulaması önerilmemektedir. Hekiminiz ve diyetisyeniniz sizlere detaylı bilgi verecek ve uygun gördükleri takdirde izlemeniz gereken size özel olarak uyarlanmış diyet listesini hazırlayacaklardır. \n\n Aralıklı oruç diyeti bir gün oruç, bir gün “ziyafet” şeklinde uygulanır. Oruç gününde, günlük kalori ihtiyacının %20-25’i alınır. Bu, kişinin yaş, kilo, boy ve günlük aktivitesine göre değişmekle birlikte, ortalama bir erkekte 500 – 625 kcal ve ortalama bir kadında 400 – 500 kcal’dir. Oruç gününde hangi gıdaların hangi aralıklarla tüketileceği, diyetisyenlerinin de uygun görmesi halinde, kişinin inisiyatifindedir. Bununla birlikte, özellikle besin değeri yüksek, kalorisi az ve bolca lif içeren gıdaların tüketilmesi ve bol bol su içilmesi hem açlık hissini azaltacak hem de daha rahat bir oruç süreci geçirilmesini sağlayacaktır(1,3). Serbest günde, yani “ziyafet” gününde ise klasik anlamda gıda alımı kısıtlaması yoktur ve istenilen her şey yenebilir(1,4). Bununla birlikte, amacımızın kilo vermek olduğunu göz önünde bulundurmak ve aşırıya kaçmamakta fayda vardır.\n\n Aralıklı oruç diyeti yaparken oruç gününde uygulayabileceğiniz örnek bir liste: \n\n Kahvaltı (250 kcal)\n• 40 gram yulaf ezmesi\n• 100 gram meyve\n• 1 yumurta veya 1 yumurtayla yapılmış yağsız omlet (domates, soğan, ıspanak vb. katabilirsiniz)\n\nÖğle veya akşam yemeği (300 kcal, sadece birisinde yemek yiyebilirsiniz)\n• 1 patates (haşlanmış ya da yağsız fırınlanmış)\n• 1 porsiyon sebze\n• 150 gram meyve\n• 100 gram tavuk (haşlanmış veya yağsız fırınlanmış) veya 100 gram tavukla yapılan az yağlı çorba (içerisine yarım bardak sebze katılabilir)\n\n Öğün aralarında (60 kcal, seçeneklerden sadece bir tanesi günde bir kez tüketilmeli)\n• 30 gram az yağlı peynir\n• Bir avuç fındık veya badem\n• 1 elma\n• Yarım muz\n\n Bu diyet şeklinin yanında, 16:8 diyeti ve 5:2 diyeti varyasyonları da ortaya çıkmıştır(14).\n\n 16:8 diyetinde, günün 16 saati “oruç” zamanı ve kalan 8 saati ise “beslenme” zamanı olarak uygulanır. 16:8 diyetinde oruç zamanında beslenilmez. 16:8 diyeti uygulanacaksa, beslenme saatlerinin doğru ayarlanması hem sizin rahatınız hem de diyetinizden en yüksek verimi almanız için önemlidir. Örneğin 10:00 – 18:00, 12:00 – 20:00 veya 09:00 – 17:00 saatleri arasında beslenilirse hem gününüz daha rahat geçecek, hem de fiziksel ve metabolik olarak en aktif olduğunuz saatlerde enerji ihtiyacınızı karşılamış olacaksınız(15).\n\n 5:2 diyetinde ise haftanın 2 günü “oruç”, kalan 5 günü ise “beslenme” günüdür. Oruç günlerinde kalori alımı kısıtlanır, yani tam bir açlık söz konusu değildir. Diyetisyeninizin belirleyeceği miktarlarda gıda alırsınız. Beslenme günlerinde ise gıda alımında kısıtlama söz konusu değildir. 5:2 diyetinde oruç günlerinin ardışık olmaması gereklidir. Yani 2 gün üst üste oruç günü yapılmamalıdır(14).\n\n Aralıklı Oruç Diyetinde Neler Tüketebiliriz?\n\n Aralıklı oruç diyeti yaparken, diyetisyeninizin size özel olarak hazırlayacağı programa uymanız çok önemlidir. Bununla birlikte, amacımızın kilo vermek olduğunu unutmaz ve serbest günlerimizde de buna göre davranırsak daha başarılı oluruz. Serbest günlerimizde “bugün her şey serbest, ne bulursam yiyeyim” mantığıyla hareket etmek yerine besleyiciliği yüksek ve besleyici gıdaları tüketerek diyetinizden en yüksek faydayı sağlayabilirsiniz. Tüketebileceğiniz gıdaların listesini diyetisyeniniz ile görüşerek alabilirsiniz. Bununla birlikte yüksek kalori içeren gıdaları, tatlı çeşitleri, hızlı yemek (fast food) çeşitleri ve benzerlerini mümkün olduğunca az tüketmekte fayda vardır. Hem oruç hem de beslenme günlerinde bol bol su içmelisiniz. Oruç günlerinde lifli gıdalar tüketerek hem daha uzun süren tokluk hissi sağlamış hem de bağırsak hareketlerini düzenleyemeye yardımcı olmuş olursunuz(13).',
    image: const AssetImage('assets/images/infast.jpg'),
    kaynakca: ' 1. Trepanowski, J. F. et al. Effect of Alternate-Day Fasting on Weight Loss, Weight Maintenance, and Cardioprotection Among Metabolically Healthy Obese Adults. JAMA Intern. Med. 177, 930 (2017).\n 2. Moreira, E. A. M., Most, M., Howard, J. & Ravussin, E. Dietary Adherence to Long-Term Controlled Feeding in a Calorie-Restriction Study in Overweight Men and Women. Nutr. Clin. Pract. 26, 309–315 (2011).\n 3. Hoddy, K. K. et al. Meal timing during alternate day fasting: Impact on body weight and cardiovascular disease risk in obese adults. Obesity 22, n/a-n/a (2014).\n 4. Ganesan, K., Habboush, Y. & Sultan, S. Intermittent Fasting: The Choice for a Healthier Lifestyle. Cureus 10, e2947 (2018).\n 5. Alhamdan, B. A. et al. Alternate‐day versus daily energy restriction diets: which is more effective for weight loss? A systematic review and meta‐analysis. Obes. Sci. Pract. 2, 293 (2016).\n 6. Catenacci, V. A. et al. A randomized pilot study comparing zero-calorie alternate-day fasting to daily caloric restriction in adults with obesity. Obesity 24, 1874–1883 (2016).\n 7. Varady, K. A., Bhutani, S., Church, E. C. & Klempel, M. C. Short-term modified alternate-day fasting: a novel dietary strategy for weight loss and cardioprotection in obese adults. Am. J. Clin. Nutr. 90, 1138–1143 (2009).\n 8. Klempel, M. C., Kroeger, C. M. & Varady, K. A. Alternate day fasting (ADF) with a high-fat diet produces similar weight loss and cardio-protection as ADF with a low-fat diet. Metabolism 62, 137–143 (2013).\n 9. Johnson, J. B. et al. Alternate day calorie restriction improves clinical findings and reduces markers of oxidative stress and inflammation in overweight adults with moderate asthma. Free Radic. Biol. Med. 42, 665–674 (2007).\n 10. Bhutani, S., Klempel, M. C., Kroeger, C. M., Trepanowski, J. F. & Varady, K. A. Alternate day fasting and endurance exercise combine to reduce body weight and favorably alter plasma lipids in obese humans. Obesity 21, 1370–1379 (2013).\n 11. Sutton, E. F. et al. Early Time-Restricted Feeding Improves Insulin Sensitivity, Blood Pressure, and Oxidative Stress Even without Weight Loss in Men with Prediabetes. Cell Metab. 27, 1212-1221.e3 (2018).\n 12. Berg JM, Tymoczko JL, S. L. Food Intake and Starvation Induce Metabolic Changes. Biochemistry 5th edition. (W.H. Freeman, 2002).\n 13. Rizzo, N. What Foods Are Best to Eat on an Intermittent Fasting Diet? (2018). Available at: https://greatist.com/eat/what-to-eat-on-an-intermittent-fasting-diet#1. (Accessed: 3rd August 2019).\n 14. Frank, G. Intermittent fasting: Is restrictive eating right for you? (2018). Available at: https://www.today.com/health/intermittent-fasting-restrictive-eating-right-you-t102998. (Accessed: 3rd August 2019)\n 15. Link, R. 16/8 Intermittent Fasting: A Beginner’s Guide. (2018). Available at: https://www.healthline.com/nutrition/16-8-intermittent-fasting. (Accessed: 3rd August 2019)'
  ),

];