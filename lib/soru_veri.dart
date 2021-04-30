import 'soru.dart';
class SoruVeri {
  int soruIndex=0;
  List <Soru>_soruListesi = [
    Soru(sorumetni: 'Telefonu, Alexander Grahambell İcat Etmiştir',
        soruyaniti: true),
    Soru(sorumetni: 'Titanic, En Büyük Gemidir', soruyaniti: false),
    Soru(sorumetni: 'Kaju Fıstığı, Aslında Bir Meyvenin Sapıdır',
        soruyaniti: true),
    Soru(sorumetni: 'Kelebeklerin Ömrü Bir Gündür', soruyaniti: false),
    Soru(sorumetni: 'Dünyadaki Tavuk Sayısı, İnsan Sayısından Fazladır',
        soruyaniti: true),
    Soru(sorumetni: 'Fatih Sultan Mehmet Hiç Patates Yememiştir',
        soruyaniti: true),
    Soru(
        sorumetni: 'Çanakkale Savaşı Sırasında 276 Kg’lık Mermiyi Tek Başına Kaldıran Türk Askeri, Hasan Onbaşıdır',
        soruyaniti: false),
    Soru(sorumetni: 'Denizatı, Doğum Yapan Tek Erkek Hayvandır',
        soruyaniti: true),
    Soru(sorumetni: 'At, İlk Evcilleştirilmiş Hayvandır', soruyaniti: false),
    Soru(
        sorumetni: 'Dünya, En Büyük Uydusu Olan Gezegendir', soruyaniti: false),
    Soru(sorumetni: 'Lama, Kızınca Tüküren Bir Hayvandır', soruyaniti: true),
    Soru(
        sorumetni: 'Bozkırın Tezenesi Lakaplı Rahmetli Halk Ozanımız Neşet Ertaştır',
        soruyaniti: true),
    Soru(sorumetni: 'Köpek Balığı, Memeli Bir Hayvandır', soruyaniti: false),
    Soru(sorumetni: 'Tomograf, Depremin Büyüklüğünü Ve Süresini Ölçen Alettir',
        soruyaniti: false),
    Soru(sorumetni: 'Pirinç, Çeltik Kabuğunun Soyulmasıyla Elde Edilir ',
        soruyaniti: true),
  ];

  String getsorumetni() {
    return _soruListesi [soruIndex].sorumetni;
  }

  bool getsoruyaniti() {
    return _soruListesi [soruIndex].soruyaniti;
  }

  void sonrakiSoru() {
    if (soruIndex+1  < _soruListesi.length) {
      soruIndex++;
    }
  }
  bool sorularBittiMi (){
    if (soruIndex + 1 >= _soruListesi.length) {
     return true;
    }
    else{
      return false;
    }
  }
  void sorulariSifirla (){
    soruIndex=0;

  }
}
