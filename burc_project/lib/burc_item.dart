import 'package:burc_project/burc_detay.dart';
import 'package:flutter/material.dart';
import 'package:burc_project/data/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap:(){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: listelenenBurc)));
              Navigator.pushNamed(context, '/burcDetay', arguments: listelenenBurc);
            },
            leading: Image.asset(
              "images/" + listelenenBurc.getBurcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
