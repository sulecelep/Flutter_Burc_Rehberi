import 'package:burc_project/burc_item.dart';
import 'package:burc_project/data/model/burc.dart';
import 'package:burc_project/data/strings.dart';
import 'package:flutter/material.dart';


class BurcListesi extends StatelessWidget {
  List<Burc> tumBurclar = [];
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burç Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.burcAdlari[i];
      var burcTarihi = Strings.burcTarihleri[i];
      var burcDetayi = Strings.burcGenelOzellikleri[i];
      //koc1.png resmine erişmek için;  'burcAdi'+[1].'png'
      var burcKucukResim = Strings.burcAdlari[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.burcAdlari[i].toLowerCase() + '_buyuk${i + 1}.png';
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
