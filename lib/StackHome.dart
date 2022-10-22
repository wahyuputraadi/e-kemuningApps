import 'package:e_kemuning/Pages/Kelurahan_detail.dart';
import 'package:e_kemuning/Pages/keterangan.dart';
import 'package:e_kemuning/Pages/perizinan.dart';
import 'package:e_kemuning/Pages/profil.dart';
import 'package:e_kemuning/Pages/slide_bar.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:flutter/material.dart';

//import 'package:e_kemuning/Home.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:e_kemuning/Pages/detail_wilayah.dart';
//import 'package:e_kemuning/Pages/kelurahan';
import 'package:e_kemuning/list_data.dart';

import 'Pages/Lisview_activitiy.dart';

class StackHome extends StatelessWidget {
  const StackHome({Key? key}) : super(key: key);
  final String _phoneNumberPolis = '110';
  final String _phoneNumberDamkar = '113';
  final String _phoneNumberAmbulance = '119';
  final String _phoneNumberJalan = '081368866070';
  final String _phoneNumberPuskesmas = '119';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'E-Kemuning',
          style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 428,
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Positioned(
                  // top: 150,
                  // left: 24,
                  bottom: -80,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 310,
                                height: 210,
                                child: Image.asset(
                                  'assets/images/Home Banner.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 310,
                                height: 210,
                                child: Image.asset(
                                  'assets/images/Home Banner2.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 310,
                                height: 210,
                                child: Image.asset(
                                  'assets/images/Home Banner 3.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 29 * 2.5,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              right: 0,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Tentang Kemuning',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Potensi Section
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const TabBarPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: EdgeInsets.all(21.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0196FF).withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/people.png'),
                            height: 40,
                            width: 40,
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Profil',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  // Akhir Potensi Section
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const detailsWilayah();
                          }));
                        },
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0196FF).withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/map.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Wilayah',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                // return LisViewActivity(
                                //   title: 'Data List Kelurahan',
                                // );
                                return detailskelurahan();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: const EdgeInsets.all(21.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0196FF).withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: const AssetImage(
                                'assets/images/personalcard.png'),
                            height: 40,
                            width: 40,
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Kelurahan',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  // Potensi Section
                  // const SizedBox(
                  //   width: 16,
                  // ),
                  // Column(
                  //   children: [
                  //     InkWell(
                  //       onTap: () {},
                  //       child: Container(
                  //         width: 83,
                  //         height: 83,
                  //         padding: EdgeInsets.all(21.0),
                  //         decoration: BoxDecoration(
                  //           color:
                  //               const Color(0xFF0196FF).withOpacity(0.05),
                  //           border: Border.all(
                  //               color: const Color(0xFF0196FF),
                  //               width: 0,
                  //               style: BorderStyle.none),
                  //           borderRadius: BorderRadius.circular(24),
                  //           //color: Colors.transparent,
                  //           shape: BoxShape.rectangle,
                  //         ),
                  //         child: Ink.image(
                  //           image:
                  //               AssetImage('assets/images/status-up.png'),
                  //           height: 40,
                  //           width: 40,
                  //           //fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     ),
                  //     const SizedBox(
                  //       height: 8,
                  //     ),
                  //     Text('Potensi'),
                  //   ],
                  // ),
                  // Akhir Potensi Section
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: EdgeInsets.all(21.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0196FF).withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/lovely.png'),
                            height: 40,
                            width: 40,
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Program Kasih',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.only(top: 26, right: 0, bottom: 0, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Layanan Publik',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // Container(
                    //   padding: const EdgeInsets.only(
                    //       top: 2, right: 6, bottom: 2, left: 6),
                    //   // ignore: sort_child_properties_last
                    //   child: Text(
                    //     'Segera Hadir',
                    //     style: blackTextStyle.copyWith(
                    //       color: Colors.white,
                    //       fontSize: 8,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Colors.green,
                    //     borderRadius: BorderRadius.circular(24),
                    //     //color: Colors.transparent,
                    //     shape: BoxShape.rectangle,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PerizinanPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: EdgeInsets.all(21),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0196FF).withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/suratizin.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Surat Perizinan',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KeteranganPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: const EdgeInsets.all(21),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0196FF).withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/shield-tick.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Surat Keterangan',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: EdgeInsets.all(21),
                          decoration: BoxDecoration(
                            color: bgAbu.withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/pengaduan.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text('Pengaduan'),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 83,
                          height: 83,
                          padding: EdgeInsets.all(21),
                          decoration: BoxDecoration(
                            color: bgAbu.withOpacity(0.05),
                            border: Border.all(
                                color: const Color(0xFF0196FF),
                                width: 0,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(24),
                            //color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/program.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text('Program'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 16,
          ),
          const Divider(
            height: 16,
            thickness: 10,
            indent: 0,
            endIndent: 0,
            color: Color(0XFFF6F6F6),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 26,
              right: 0,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Nomor Penting',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              final _call = 'tel:$_phoneNumberPolis';
                              final _text = 'sms:$_phoneNumberPolis';
                              if (await canLaunch(_call)) {
                                await launch(_call);
                              }
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: EdgeInsets.all(21.0),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF0196FF).withOpacity(0.05),
                                border: Border.all(
                                    color: const Color(0xFF0196FF),
                                    width: 0,
                                    style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(24),
                                //color: Colors.transparent,
                                shape: BoxShape.rectangle,
                              ),
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/images/call-calling.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Polsek',
                            style: blackTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              final _call = 'tel:$_phoneNumberDamkar';
                              final _text = 'sms:$_phoneNumberDamkar';
                              if (await canLaunch(_call)) {
                                await launch(_call);
                              }
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF0196FF).withOpacity(0.05),
                                border: Border.all(
                                    color: const Color(0xFF0196FF),
                                    width: 0,
                                    style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(24),
                                //color: Colors.transparent,
                                shape: BoxShape.rectangle,
                              ),
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/images/call-calling.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Damkar',
                            style: blackTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              final _call = 'tel:$_phoneNumberAmbulance';
                              final _text = 'sms:$_phoneNumberAmbulance';
                              if (await canLaunch(_call)) {
                                await launch(_call);
                              }
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF0196FF).withOpacity(0.05),
                                border: Border.all(
                                    color: const Color(0xFF0196FF),
                                    width: 0,
                                    style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(24),
                                //color: Colors.transparent,
                                shape: BoxShape.rectangle,
                              ),
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/images/call-calling.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Ambulance',
                            style: blackTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              final _call = 'tel:$_phoneNumberJalan';
                              final _text = 'sms:$_phoneNumberJalan';
                              if (await canLaunch(_call)) {
                                await launch(_call);
                              }
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: EdgeInsets.all(21),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF0196FF).withOpacity(0.05),
                                border: Border.all(
                                    color: const Color(0xFF0196FF),
                                    width: 0,
                                    style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(24),
                                //color: Colors.transparent,
                                shape: BoxShape.rectangle,
                              ),
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/images/call-calling.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lampu Jalan',
                            style: blackTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              final _call = 'tel:$_phoneNumberPolis';
                              final _text = 'sms:$_phoneNumberPolis';
                              if (await canLaunch(_call)) {
                                await launch(_call);
                              }
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: EdgeInsets.all(21.0),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF0196FF).withOpacity(0.05),
                                border: Border.all(
                                    color: const Color(0xFF0196FF),
                                    width: 0,
                                    style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(24),
                                //color: Colors.transparent,
                                shape: BoxShape.rectangle,
                              ),
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/images/call-calling.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text('Puskesmas'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 16,
          ),
          const Divider(
            height: 16,
            thickness: 10,
            indent: 0,
            endIndent: 0,
            color: Color(0XFFF6F6F6),
          ),
          SlideBar(),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 26,
          //     right: 24,
          //     bottom: 0,
          //     left: 24,
          //   ),
          //   child: Column(
          //     children: <Widget>[
          //       Row(
          //         children: [
          //           Text(
          //             'UMKM',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontFamily: 'Poppins',
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           children: [
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kerajinan.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kerajinan',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kuliner.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kuliner',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/argi.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: const Text(
          //                         'Agribisnis',
          //                         textAlign: TextAlign.center,
          //                         style: const TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 0,),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 16,
          //     right: 24,
          //     bottom: 0,
          //     left: 24,
          //   ),
          //   child: Column(
          //     children: <Widget>[
          //       Row(
          //         children: [
          //           Text(
          //             'UMKM',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontFamily: 'Poppins',
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           children: [
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kerajinan.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kerajinan',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kuliner.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kuliner',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/argi.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: const Text(
          //                         'Agribisnis',
          //                         textAlign: TextAlign.center,
          //                         style: const TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 16,
          //     right: 24,
          //     bottom: 0,
          //     left: 24,
          //   ),
          //   child: Column(
          //     children: <Widget>[
          //       Row(
          //         children: [
          //           Text(
          //             'UMKM',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontFamily: 'Poppins',
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           children: [
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kerajinan.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kerajinan',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kuliner.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kuliner',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/argi.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: const Text(
          //                         'Agribisnis',
          //                         textAlign: TextAlign.center,
          //                         style: const TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 16,
          //     right: 24,
          //     bottom: 0,
          //     left: 24,
          //   ),
          //   child: Column(
          //     children: <Widget>[
          //       Row(
          //         children: [
          //           Text(
          //             'UMKM',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontFamily: 'Poppins',
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           children: [
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kerajinan.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kerajinan',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/Kuliner.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: Text(
          //                         'Kuliner',
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 16,
          //             ),
          //             Container(
          //               child: InkWell(
          //                 onTap: () {},
          //                 child: Ink.image(
          //                   image: AssetImage('assets/images/argi.png'),
          //                   height: 150,
          //                   width: 180,
          //                   fit: BoxFit.cover,
          //                   child: Align(
          //                     alignment: Alignment.bottomLeft,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(16.0),
          //                       child: const Text(
          //                         'Agribisnis',
          //                         textAlign: TextAlign.center,
          //                         style: const TextStyle(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.normal,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
