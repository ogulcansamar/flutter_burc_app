import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'models/Burc.dart';

class BurcDetail extends StatefulWidget {
  final Burc selectedBurc;

  const BurcDetail({required this.selectedBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetail> createState() => _BurcDetailState();
}

class _BurcDetailState extends State<BurcDetail> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator _generator;
  
  @override
  void initState() {
    super.initState();
   // findAppbarColor();
    WidgetsBinding.instance!.addPostFrameCallback((_) => findAppbarColor());//Widgetler geldikten sonra appBarColor bulma işlemini çalıştırıyoruz
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.selectedBurc.burcName + " Burcu ve özellikleri"),
              centerTitle: true,
              background: Image.asset(
                'assets/images/' + widget.selectedBurc.burcLargeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.selectedBurc.burcDetail + widget.selectedBurc.burcDetail,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void findAppbarColor() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage('assets/images/'+widget.selectedBurc.burcLargeImage));
    appbarColor=_generator.dominantColor!.color;
    setState(() {

    });
  }
}
