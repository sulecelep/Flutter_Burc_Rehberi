import 'package:flutter/material.dart';
import 'package:burc_project/data/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';


//BurcDetay widgetı başlangıçta statelesstı ancak pallette paketi yüklendikten sonra anlık olarak renk yakalayacağı için
//statefull olarak convert ettik 
class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

//statefull widget kullanırken değişecek değerler class dışına alınır
class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi=Colors.transparent;
  late PaletteGenerator _generator;

  @override
  //state başlattık
  void initState(){
    super.initState();
    //app bar renginin tespiti
    appbarRenginiBul();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            
            centerTitle: true,
            backgroundColor:appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.getBurcAdi+" Burcu ve Özellikleri"),
              background: Image.asset(
                "images/" + widget.secilenBurc.getBurcBuyukResim, 
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.getBurcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  
  void appbarRenginiBul () async{
     _generator=await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.getBurcBuyukResim}'),);
     appbarRengi=_generator.dominantColor!.color;
     //print(appbarRengi);
     setState(() {});
  }
}
