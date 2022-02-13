import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_detail.dart';

import 'models/Burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listedBurc;

  const BurcItem({required this.listedBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.pushNamed(context, 'burcDetail',arguments: listedBurc);
            },
            leading: Image.asset("assets/images/" + listedBurc.burcSmallImage),
            title: Text(listedBurc.burcName,style: myTextStyle.headline5,),
            subtitle: Text(listedBurc.burcDate,style: myTextStyle.subtitle1,),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.pink),
          ),
        ),
      ),
    );
  }
}
