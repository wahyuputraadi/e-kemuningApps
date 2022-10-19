import 'package:flutter/material.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Pendidikan
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            right: 24,
            bottom: 0,
            left: 24,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Pendidikan',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Ink.image(
                            image: AssetImage('assets/images/Sd.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'SD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/Smp.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'SMP',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/Sma.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'SMA',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/Univ.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'UNIVERSITAS',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Akhir Pendidikan
        //Darurat
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            right: 24,
            bottom: 0,
            left: 24,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Darurat',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/rumah sakit.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Rumah Sakit',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/puskes.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Puskesmas',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/klinik.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Klinik',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/apotek.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Apotik',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Akhir Darurat
        //UMKM
        Padding(
          padding: const EdgeInsets.only(
            top: 26,
            right: 24,
            bottom: 0,
            left: 24,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'UMKM',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/Kerajinan.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Kerajinan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/Kuliner.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Kuliner',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/pashion.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Fashion',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/argibisnis.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Agribisnis',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Akhir UMKM
        //Pelatihan
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            right: 24,
            bottom: 0,
            left: 24,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Pelatihan',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/pembelajaran.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Pembelajaran',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image:
                          AssetImage('assets/images/acara.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Acara Pemerintah',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('assets/images/acara masyarakat.png'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Acara Masyarakat',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Akhir Pelatihan
      ],
    );
  }
}
