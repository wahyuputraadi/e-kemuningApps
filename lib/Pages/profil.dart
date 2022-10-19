import 'package:e_kemuning/Models/nonperizinan.dart';
import 'package:e_kemuning/Models/perizinan.dart';
//import 'package:e_kemuning/Models/profildivisi.dart';
import 'package:e_kemuning/Pages/perizinan_detail.dart';
import 'package:e_kemuning/StackHome.dart';
import 'package:e_kemuning/Themes/theme.dart';
//import 'package:e_kemuning/Widgets/card_divisi.dart';
import 'package:e_kemuning/Widgets/card_nonperizinan.dart';
import 'package:e_kemuning/Widgets/card_perizinan.dart';
import 'package:e_kemuning/Widgets/card_profil_kelurahan.dart';
import 'package:e_kemuning/Widgets/card_profil_struktur.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: AssetImage('assets/images/bg-primary.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Kecamatan Kemuning',
                          style: whiteTextStyle.copyWith(fontSize: 24),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Kota Palembang ',
                              style: whiteTextStyle.copyWith(fontSize: 12),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      children: [
                        Text(
                          'Jl. Jend. Basuki Rachmat No.75, Pipa Jaya, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30128. Lihat Maps',
                          style: whiteTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 159, 248),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TabBar(
                              unselectedLabelColor: Colors.white,
                              labelColor: Colors.black,
                              indicatorColor: Colors.white,
                              indicatorWeight: 2,
                              indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              controller: tabController,
                              tabs: [
                                Tab(
                                  text: 'Struktur kelurahan',
                                ),
                                Tab(
                                  text: 'Lurah',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          strukkel(),
                          kelurahan(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
