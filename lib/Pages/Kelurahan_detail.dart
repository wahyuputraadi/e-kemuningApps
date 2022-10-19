import 'package:e_kemuning/Pages/dua_puluh_ilir.dart';
import 'package:e_kemuning/Pages/pahlawan.dart';
import 'package:e_kemuning/Pages/pipareja.dart';
import 'package:e_kemuning/Pages/sekipjaya.dart';
import 'package:e_kemuning/Pages/talangaman.dart';
import 'package:flutter/material.dart';
import 'package:e_kemuning/./StackHome.dart';
//import 'location_maps.dart';
import 'ario_kemuning.dart';

class detailskelurahan extends StatelessWidget {
  const detailskelurahan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Kelurahan',
          style: TextStyle(color: Colors.black),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.notifications),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 24.0, left: 24.0),

                  // height: 250,
                  child: Image.asset('assets/images/Kelurahan.png'),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'Ak'),
                  child: Column(
                    children: [
                      Card(
                        elevation: 0.5,
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const duapuluhilir();
                                  }));
                                }, //leading: Icon(Icons.arrow_drop_down_circle),
                                title: const Text('Kel 20 Ilir D II'),
                                subtitle: Text(
                                  '15.281 Orang',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 24.0,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const KelArio();
                            }));
                          },
                          //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Ario Kemuning'),
                          subtitle: Text(
                            '9.860 Orang',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const pahlawan();
                            }));
                          },
                          //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Pahlawan'),
                          subtitle: Text(
                            '11.634 Orang',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const pipareja();
                            }));
                          }, //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Pipa Reja'),
                          subtitle: Text(
                            '18.647 Orang',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const sekipjaya();
                            }));
                          },
                          //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Sekip Jaya'),
                          subtitle: Text(
                            '14.189 Orang',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const talangaman();
                            }));
                          },
                          //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Talang Aman'),
                          subtitle: Text(
                            '12.039 Orang',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
