import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_item.dart';
import 'package:flutter_burclar/data/strings.dart';
import 'package:flutter_burclar/models/Burc.dart';

class BurcList extends StatelessWidget {
  late List<Burc>
      allBurcs; //Late koyarak, daha sonra bu listenin initialize edileceğini belirtiyoruz

  BurcList() {
    allBurcs = readyDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burçlar listesi'),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return BurcItem(listedBurc: allBurcs[index]);
            },
            itemCount: allBurcs.length),
      ),
    );
  }
}

List<Burc> readyDataSource() {
  List<Burc> current = [];

  for (int i = 0; i < 12; i++) {
    var burcName = Strings.BURC_ADLARI[i];
    var burcDate = Strings.BURC_TARIHLERI[i];
    var burcDetail = Strings.BURC_GENEL_OZELLIKLERI[i];

    //koc1.png değerini oluşturmak   Koc ---> koc1.png
    var burcSmallImage = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';

    //koc_buyuk1.png değerini oluşturmak   Koc ---> koc_buyuk1.png
    var burcLargeImage =
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk${i + 1}.png';

    Burc addingBurc =
        Burc(burcName, burcDate, burcDetail, burcSmallImage, burcLargeImage);
    current.add(addingBurc);
  }
  return current;
}
