import 'package:flutter/material.dart';

class EvdeSpor {
  String baslik;
  String aciklama;
  AssetImage image;

  EvdeSpor({
    required this.baslik,
    required this.aciklama,
    required this.image,
});
}

List<EvdeSpor> evdesporList = [
  EvdeSpor(
      baslik: "Adım Egzersizi",
      aciklama: "Kardiyovasküler sistemi güçlendirmeye dayalı bu egzersizi evde, ofiste, okulda, yani her yerde yapabilmeniz mümkün. Tek yapmanız gereken, olduğunuz yerde durarak bir dizinizi merdiven çıkıyormuş gibi yukarı kaldırıp indirmek ve ardından aynı hareketi diğer bacağınız ile yapmak.\nBu hareketi ellerinizde bir ağırlık varken yapmayı denediğiniz takdirde kol kaslarınızı da güçlendirebilirsiniz. Ağırlık olarak içi dolu bir çamaşır sepeti kullanabilir ve her bir adım hareketinde çamaşır sepetini de omuz yüksekliğine kadar kaldırıp indirebilirsiniz. Her bir hareketi en az 5 defa tekrarlamanızı öneririz. ",
      image: const AssetImage('assets/images/evde_adim.jpg'),
  ),
  EvdeSpor(
      baslik: "Duvarda Oturma Egzersizi",
      aciklama: "Evde spor sürecini gayet pratik bir şekilde sürdürmenizi sağlayacak bir diğer egzersizimiz ise duvara dayanarak yapılan oturma hareketi. Bunun için öncelikle sırtınızı düz bir duvara yaslayın ve sırtınızın duvarla temasını kesmeden yavaş yavaş bir sandalyeye oturuyormuş gibi dizlerinizi bükerek alçalın.\nÜst bacaklarınız yere tamamen paralel konuma geldiğinde bu pozisyonda 15 saniye kadar sabit durmaya çalışın. Duvarda oturma egzersizini her yaptığınızda bu süreyi biraz daha uzatmayı deneyerek kaslarınızı esnetme fırsatı bulabilirsiniz.",
      image: const AssetImage('assets/images/duvara_oturma_egzersizi.jpg'),
  ),
  EvdeSpor(
      baslik: "Bacak Kası Egzersizi",
      aciklama:"Squat olarak da anılan bacak kası egzersizi, evde spor yapmak isteyenler için en ideal hareketlerden biri olarak tanımlanabilir. Bu egzersizi denemek için hayali bir sandalyeye oturuyormuş gibi çömelin ve aynı anda önünüzdeki hayali bir nesneyi almak için kollarınızı uzatın. Eş zamanlı olarak yapacağınız bu hareketin ardından pozisyonunuzu düzeltin.\nSquat yaparken bacak aralığının omuz hizasını geçmediğinden emin olun. Bu egzersizi her yaptığınızda bacak kaslarınızın esnemeye alıştığını ve hareketi gerçekleştirirken bir süre sonra zorlanmamaya başladığınızı hissedebilirsiniz.",
      image: const AssetImage('assets/images/squat_bacak.jpg'),
  ),
  EvdeSpor(
      baslik: "Ayakta Şınav Egzersizi",
      aciklama:"Hemen herkesin gayet iyi bildiği şınav hareketini ayakta dururken de yapabileceğinizi biliyor muydunuz? Üstelik ayakta şınav egzersizi sayesinde göğüs ve kol kaslarınızı güçlendirme fırsatı bulabilirsiniz. Ancak öncelikle bu hareketi yapmak için duvar, mutfak tezgahı veya yemek masasından destek almanız gerekeceğini belirtmeliyiz.\nTezgah veya masa ile aranızda yaklaşık yarım metre kadar mesafe varken avuçlarınızı tezgahın ya da masanın kenarına yerleştirin ve ardından ayak ucunuz sabit kalacak şekilde vücudunuzu ileri geri hareket ettirin. Bu şınav egzersizini 20 defa tekrarlayarak hareketi tamamlayın.",
      image: const AssetImage('assets/images/ayakta_sinav.jpg'),
  ),
  EvdeSpor(
      baslik: "Plank Egzersizi",
      aciklama: "Plank egzersizi de etkili bir vücut güçlendirme hareketi olarak nitelendirilebilir. Plank yapmak için öncelikle zemine yüzüstü uzanın ve ardından vücudunuzu kollarınızla yukarı doğru itin. Bu hareketi gerçekleştirirken ön kollarınız ve ayak parmaklarınızın zeminde kaldığından emin olun. Eğer hareketi yapmakta çok zorlanıyorsanız, dizlerinizden destek alabilirsiniz.\nÖzellikle karın kaslarını çalıştıran bu hareketi tamamladıktan sonra karın bölgenizde yanma hissi yaşayabilirsiniz. Ancak endişelenmeyin, bu acı hissi kaslarınızın çalışmaya başlamasından kaynaklanıyor. Hareketi yapmayı sürdürdüğünüzde zamanla kaslarınızın esnemeye başladığı için yanma hissinin de azaldığına şahit olabilirsiniz.",
      image: const AssetImage('assets/images/plank_egzersizi.jpg'),
  ),
  EvdeSpor(
      baslik: "Burpee Egzersizi",
      aciklama: "Aynı anda tüm vücudu çalıştırdığı için son derece etkili, ancak bir o kadar da yorucu bir egzersiz olan burpee’yi çalışırken başlarda kendinizi fazla zorlamamanızı öneririz. Bu doğrultuda burpee egzersizi için ilk olarak ayaklarınızı omuz genişliğinde açın ve kollarınızın da vücudunuzun iki yanında serbest bırakın.\nDaha sonra ellerinizi önünüze doğru uzatıp squat yapar gibi çömelmeye başlayın. Aşağı ulaştığınızda şınav pozisyonu alın ve ardından vücudunuzu yeniden toparlayıp yukarıya doğru kendinizi iterek zıplayın. Bu sırada kollarınızı da başınızın üzerine getirerek destek alabilirsiniz. ",
      image: const AssetImage('assets/images/burpee_egzersizi.jpg'),
  ),
  EvdeSpor(
    baslik: "Mekik Egzersizi",
    aciklama: "Karın bölgesindeki yağları yakmanın en etkili yollarından biri olan mekik egzersizi, yine evde spor yapanların en sık başvurduğu hareketler arasında yer almaktadır. Mekik hareketini yapmak için ilk olarak düz bir zemine sırt üstü uzanın ve bacaklarınızı kalça genişliğinde açtıktan sonra dizlerinizi kırarak ayaklarınızı zemine basın.\nBu sırada ellerinizi ensenizin arkasında kenetleyerek boyun bölgesini destekleyin ve ayaklarınızdan güç alarak üst gövdenizi kaldırın. Üst gövdeniz dizlerinize yaklaştıktan sonra yeniden başlangıç pozisyonuna dönün. Bu egzersizi 3 set halinde 15 kez tekrar ederek alt ve üst karın kaslarını verimli bir şekilde çalıştırabilir ve göbek bölgesini sıkılaştırabilirsiniz.",
    image: const AssetImage('assets/images/mekik.jpg'),
  ),
  EvdeSpor(
    baslik: "Bisiklet Egzersizi",
    aciklama: "Sıradaki egzersizimiz; temel olarak bacak, karın ve kalça kaslarını çalıştırmaya yönelik. Bir önceki harekete benzer şekilde zeminde sırt üstü uzanmış bir şekilde yapacağınız bisiklet egzersizi için ayaklarınızı havaya doğru uzatın ve dizlerinizi bükerek havadaki hayali bisikleti sürmeye çalışın. Bir dakika boyunca bu egzersizi yapmayı deneyin. Ancak bisiklet egzersizi sırasında ellerinizi başınızın arkasında birleştirmeyi unutmayın.",
    image: const AssetImage('assets/images/bisiklet_egzersizi.jpg'),
  ),
  EvdeSpor(
    baslik: "Köprü Egzersizi",
    aciklama: "Yine zemine sırt üstü uzanarak gerçekleştirilen köprü egzersizi ile kalça kaslarını hareket ettirmek amaçlanıyor. Yaparken vücudunuzu adeta bir köprü formunu aldığı bu egzersizi yapmak için dizlerinizi büküp kalçanızı topuklarınızla iterek yerden kaldırmanız gerekiyor. Bu esnada sırtınızın ve omuzlarınızın zeminden ayrılmaması gerektiğini belirtmekte fayda var.\nKalçalarınızı kaldırdıktan sonra 1-2 saniye bekleyip yeniden başlangıç pozisyonuna dönerek egzersizi tamamlayabilirsiniz. Fakat bu hareketi 3 set halinde 10-15 defa tekrar etmeniz yararınıza olacaktır. ",
    image: const AssetImage('assets/images/kopru_egzersizi.jpg'),
  ),
  EvdeSpor(
    baslik: "Kick Back Egzersizi",
    aciklama: "Bu egzersizi yaparken yine kalça kaslarının çalışacağını en baştan belirtmiş olalım. Kick Back egzersizi için öncelikle zemine yüzüstü uzanın ve ardından bacaklarınızın kalça genişliğinde açık olduğundan emin olun. Daha sonra vücudunuzu dizleriniz ve ellerinizin üzerinde kaldırın. \nAdeta emekleme pozisyonunda olduğunuz bu sırada ilk önce sağ bacağınızı geriye doğru uzatıp havaya kaldırın. Daha sonra bacağınızı indirin, ancak zemin ile temas etmeden yeniden havaya kaldırın. Bu şekilde hareketi 15 defa tekrarladıktan sonra aynı egzersizi sol bacağınız için de uygulayın. Ancak unutmayın, bacaklarınızı havaya kaldırırken olabildiğince gergin tutmaya çalışın.",
    image: const AssetImage('assets/images/kickback_egzersizi.jpg'),
  ),
];