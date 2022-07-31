import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bilgi',
          style: TextStyle(color: Colors.blue, fontSize: 24.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: ListView(
            children: [
              Text(
                'Vücut Kitle İndeksi Nedir ?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Vücut kitle indeksi; ağırlığın boyun karesine bölünmesi formülü ile hesaplanmaktadır. Burada ağırlık kilogram ve boy da metre cinsinden alınmaktadır. VKİ olarak kısaltılmaktadır. Body mass index olarak da bilinmektedir ve BMI da denmektedir. Bireyin ideal kilosunu görebilmesi ve hangi ağırlık kategorisinde olduğunu öğrenebilmesi açısından kullanılan bir formüldür. Ancak vücut yağı ve kas kütlesi için detaylı bir bilgi vermediğinden, özellikle vücut geliştirme ile ilgilenenler için tatmin edici bir sonuç vermeyebilmektedir. Çünkü aşırı kas kütlesine sahip olduklarından sadece boy ve ağırlık ile yapılan hesaplama sonucunda BMI değerleri yüksek çıkabilmektedir. Ayrıca kas kütlesini kaybetmiş olan yaşlı bir bireyin yağ oranının fazla olduğu da vücut kitle indeksi ile görülememektedir.',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Vücut Kitle İndeksi Hesaplaması Nasıl Yapılır?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'VKİ olarak kısaltılan vücut kitle indeksi hesaplaması, kilonun boyun karesine bölünmesiyle yapılmaktadır. Ağırlığınız boyunuzun karesine bölündüğünde çıkan sonucun ifade ettiği anlam, Dünya Sağlık Örgütü’nün referans aralığı kapsamında hesaplanmaktadır. Çıkan sonuç 30’un üzerindeyse obez, 40’ın üzerindeyse morbid obez ve 50’nin üzerindeyse süper obez olarak kabul edilmektedir. Vücut kitle indeksi hesaplaması yapılırken sadece ağırlık ve boy dikkate alınmaktadır. Ancak detaylı vücut kitle indeksi için hesaplama kapsamında yaş, cinsiyet, vücut yağ yüzdesi ve bel çevresi gibi değerler de dikkate alınmaktadır. Vücut kitle indeksi hesaplaması sonucunda vücudunda sağlığını bozacak ölçüde aşırı yağ birikimi olanlar, uzman kontrolünde hesaplayarak bu değerleri kendileri için ideal olan seviyeye getirebilmektedirler.',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Geliştirici: Hüseyin ADIGÜZEL',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
