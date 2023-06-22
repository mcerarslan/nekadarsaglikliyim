import 'package:flutter/material.dart';

class FitnessSpor {
  String baslik;
  String aciklama;
  AssetImage image;
  String hareketbaslik;
  AssetImage hareketimage;
  String hareketbaslik2;
  AssetImage hareketimage2;
  String hareketbaslik3;
  AssetImage hareketimage3;
  String hareketbaslik4;
  AssetImage hareketimage4;

  FitnessSpor({
    required this.baslik,
    required this.aciklama,
    required this.image,
    required this.hareketbaslik,
    required this.hareketimage,
    required this.hareketbaslik2,
    required this.hareketimage2,
    required this.hareketbaslik3,
    required this.hareketimage3,
    required this.hareketbaslik4,
    required this.hareketimage4,
  });
}
List<FitnessSpor> fitnesssporList = [
  FitnessSpor(
      baslik: "Kol",
      aciklama: "Kol kasları vücut geliştirme ve fitness ile ilgilenen kişiler için (özellikle erkekler) en popüler kas gruplarından birisidir. Kol kasları önde ve arkada olmak üzere çeşitli bölümlere ayrılmaktadır. Bunlar kolumuzun önünde bulunan biceps brachii, brachialis ve brachioradalis kasları ile kolumuzun arka kısmında yer alan triceps brachii kasından oluşmaktadır. Bu kaslardan biceps brachii adından da anlaşılacağı üzere iki farklı başa, triceps brachii ise üç farklı başa sahiptir. Bu kasların her bir başını daha çok çalıştırmak için farklı bir egzersiz seçimi yapılabilmektedir. Yine kolumuzun ön kısmında yer alan brachialis ve brachioradialis kasları da ön kolumuzun pozisyonuna göre farklı egzersizlerle aktif olabilmektedir. Bu sayede kol antrenmanlarımızda egzersiz çeşitliliği sağlayarak kolumuzda yer alan tüm kasları etkili bir şekilde çalıştırabilir ve maksimum kol kası gelişimi elde edebiliriz.",
      image: const AssetImage('assets/images/kol.jpg'),
      hareketbaslik: "1.Dumbbell Curl",
      hareketimage: const AssetImage('assets/images/Dumbbell-Curl.gif'),
      hareketbaslik2: "2.Dumbbell Hammer Curl",
      hareketimage2: const AssetImage('assets/images/Hammer-Curl.gif'),
      hareketbaslik3: "3.Triceps Pressdown",
      hareketimage3: const AssetImage('assets/images/Pushdown.gif'),
      hareketbaslik4: "4.Overhead Triceps Extension",
      hareketimage4: const AssetImage('assets/images/Seated-Dumbbell-Triceps-Extension.gif'),
  ),
  FitnessSpor(
    baslik: "Göğüs",
    aciklama: "Vücut geliştiren insanlar için göğüs egzersizleri vazgeçilmezdir. Bunun yanı sıra düzgün bir postür için de olmazsa olmaz nitelikteki bu kas grubu estetik görünüşü önemseyen herkes için çalışmaktan kaçınılamayacak bir bölgedir. İdealize edilmiş insan vücuduna ulaşmanın yolu daha geniş bir göğüs hattına sahip olarak beli daha ince göstermekten geçer. Ayrıca daha iyi bir vücut stabilizasyonu, kolun iç rotasyonunu desteklemek ve solunuma yardımcı olmak için de göğüs kasları geliştirilmelidir. ",
    image: const AssetImage('assets/images/gogus.jpg'),
    hareketbaslik: "1.Bench Press",
    hareketimage: const AssetImage('assets/images/Barbell-Bench-Press.gif'),
    hareketbaslik2: "2.Incline Dumbell Press",
    hareketimage2: const AssetImage('assets/images/Incline-Dumbbell-Press.gif'),
    hareketbaslik3: "3.Dumbell Fly",
    hareketimage3: const AssetImage('assets/images/Dumbbell-Fly.gif'),
    hareketbaslik4: "4.Dumbell Pullover",
    hareketimage4: const AssetImage('assets/images/Dumbbell-Pullover.gif'),
  ),
  FitnessSpor(
    baslik: "Bacak",
    aciklama: "Bacak kasları, hem görsel açıdan hem de vücut sağlığı açısından büyük öneme sahiptir. Bacak kaslarınızın vücudunuza bir çok yönden faydası bulunmaktadır. Vücudunuzda bacak kaslarınıza stres yüklediğinizde, kas lifleri yırtılır. Sonrasında, dinlenme döneminde bu lifler, daha büyük ve daha güçlü bir şekilde büyür. Ardından daha güçlü, daha kaslı bacaklarla sonuçlanmaktadır. \nDambıl, barbell ve makineler kaslarınızı strese sokabilir, ancak kendi vücut ağırlığınız, ev eşyalarınız ve evde var olan ağırlık ekipmanları, bacak kası yapımında eşit derecede de etkili olabilmektedir. Bacaklarınız için haftada iki ila üç egzersiz yapmayı hedefleyebilirsiniz. Kaslarınızın daha çok büyümesi ve gelişmesi için, antrenman sonrasındaki dinlenme ve bir sonraki antrenman arasındaki süre için en az 48 saat aralık bulundurmalısınız.",
    image: const AssetImage('assets/images/bacak.jpg'),
    hareketbaslik: "1.Squat",
    hareketimage: const AssetImage('assets/images/BARBELL-SQUAT.gif'),
    hareketbaslik2: "2.Leg Curl",
    hareketimage2: const AssetImage('assets/images/Leg-Curl.gif'),
    hareketbaslik3: "3.Leg Extension",
    hareketimage3: const AssetImage('assets/images/LEG-EXTENSION.gif'),
    hareketbaslik4: "4.Calf Raise",
    hareketimage4: const AssetImage('assets/images/Dumbbell-Calf-Raise.gif'),
  ),
  FitnessSpor(
    baslik: "Omuz",
    aciklama: "Omuz hareketleri geniş ve güçlü bir fizik için vücut geliştirme antrenmanı içinde büyük önem taşıyor.Giydiğiniz giysinin güzel görünmesi, iri görünmeniz için omuz kasları ve bunları doğru hareketler ile çalışmak çok önemli. Bu yazıda omuz kası hatalarını yapmamayı öğrenecek, fitness yolculuğunuz boyunca sizi destekleyecek en iyi omuz hareketlerini tanıyacaksınız.",
    image: const AssetImage('assets/images/omuz.jpg'),
    hareketbaslik: "1.Dumbbell Shoulder Press",
    hareketimage: const AssetImage('assets/images/Dumbbell-Shoulder-Press.gif'),
    hareketbaslik2: "2.Dumbbell Lateral Raise",
    hareketimage2: const AssetImage('assets/images/Dumbbell-Lateral-Raise.gif'),
    hareketbaslik3: "3.Barbell Shrug",
    hareketimage3: const AssetImage('assets/images/Barbell-Shrug.gif'),
    hareketbaslik4: "4.Bent Over Lateral Raise",
    hareketimage4: const AssetImage('assets/images/Bent-Over-Lateral-Raise.gif'),
  ),
  FitnessSpor(
    baslik: "Sırt",
    aciklama: "Vücudun en büyük kas gruplarından biri sırttır. Sırt kaslarımızı güçlendirmek, yaralanmaları önlemeye yardımcı olabilir. Güçlü bir sırta sahip olmak hem günlük hareketler sırasında hem de egzersiz sırasında tüm vücudunuzun sorunsuz çalışmasını sağlar. Sırt, çoğu kişinin geliştirmek istediği ancak sonuç almakta zorlandığı kas gruplarından birisidir. Antrenman dünyasında birçok sırt egzersizi bulunmaktadır. ",
    image: const AssetImage('assets/images/sirt.jpg'),
    hareketbaslik: "1.Lat Pulldown",
    hareketimage: const AssetImage('assets/images/Lat-Pulldown.gif'),
    hareketbaslik2: "2.Close Grip Cable Row",
    hareketimage2: const AssetImage('assets/images/close-grip-cable-row.gif'),
    hareketbaslik3: "3.Dumbbell Row",
    hareketimage3: const AssetImage('assets/images/Dumbbell-Row.gif'),
    hareketbaslik4: "4.Barbell Bent Over Row",
    hareketimage4: const AssetImage('assets/images/Barbell-Bent-Over-Row.gif'),
  ),

];