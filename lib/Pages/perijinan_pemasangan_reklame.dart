import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class reklame extends StatelessWidget {
  const reklame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        elevation: 0.2,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Persyaratan',
                  style: blackTextStyle.copyWith(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: AssetImage('assets/images/bg-primary.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(.0),
                child: Column(
                  children: [
                    Text(
                      'Menyerahkan formulir yang sudah diisi dan ditandatangani dengan dilampiri :',
                      style: whiteTextStyle.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 1,
              primaryText: '1.	Foto copy Kartu Tanda Penduduk (KTP) pemohon;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText: 'Foto copy Lokasi dan simulasi Pemasangan Reklame;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText: 'Gambar denah lokasi;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText: 'Gambar desain reklame beserta ukurannya;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 5,
              primaryText:
                  'Surat kuasa dari pemohon izin bermaterai Rp. 6.000’-, apabila tidak dapat mengurus sendiri;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 6,
              primaryText:
                  'Surat Pernyataan bertanggung jawab sepenuhnya terhadap segala resiko penyelenggaraan reklame.',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Masing-masing sebanyak 1 (satu) lembar',
                style: blackTextStyle.copyWith(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
