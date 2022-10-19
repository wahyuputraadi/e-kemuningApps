import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class nonPerizinankeramaian extends StatelessWidget {
  const nonPerizinankeramaian({Key? key}) : super(key: key);

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
          CardDetailPerizinan(
            DetailPerizinan(
              id: 1,
              primaryText:
                  'Surat pemohon dari Penyelenggara beserta proposal; ',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText: 'Surat izin dari Kepolisian Sektor Kecamatan;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
                id: 3,
                primaryText:
                    'Surat Keterangan dari Lurah di lokasi penyelenggaraan acara;'),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy Kartu Tanda Penduduk (KTP) Penanggung Jawab Kegiatan.',
            ),
          ),
        ],
      ),
    );
  }
}
