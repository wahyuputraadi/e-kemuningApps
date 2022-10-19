import 'package:flutter/material.dart';
class strukkel extends StatelessWidget {
  const strukkel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 0.5,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('M. Irman, S.STP'),
                  subtitle: Text(
                    'Camat Kemuning',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  onTap: () {},
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Irpan'),
                  subtitle: Text(
                    'Sekretaris Camat',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Jordyn Carder'),
                  subtitle: Text(
                    'Divisi Hukum dan Perizinan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Alena Carder'),
                  subtitle: Text(
                    'Divisi Perekonomian',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Kierra Schleifer'),
                  subtitle: Text(
                    'Divisi Administrasi dan Keuangan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Allison Baptista'),
                  subtitle: Text(
                    'Divisi Hukum dan Perizinan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Kaiya Workman'),
                  subtitle: Text(
                    'Divisi Administrasi dan Keuangan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Ann Donin'),
                  subtitle: Text(
                    'Divisi Hukum dan Perizinan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Erin Siphron'),
                  subtitle: Text(
                    'Devisi Kesejahteraan Rakyat',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Adison Philips'),
                  subtitle: Text(
                    'Divisi Tata Pemerintahan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}