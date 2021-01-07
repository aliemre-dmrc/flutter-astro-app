import 'package:astro_derki/burc_liste.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class BurcDetay extends StatefulWidget {
  int gelenIndex;

  BurcDetay(this.gelenIndex);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Burc secilenBurc;
  Color baskinRenk;

  @override
  void initState() {
    super.initState();
    secilenBurc = BurcListesi.tumBurclar[widget.gelenIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover),
              title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetay,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
