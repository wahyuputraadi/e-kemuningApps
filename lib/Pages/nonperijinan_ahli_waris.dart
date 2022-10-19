import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class ahliwaris extends StatelessWidget {
  const ahliwaris({Key? key}) : super(key: key);

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
                  'Formulir surat pernyataan ahli waris dan kuasa ahli waris yang telah ditandatangan oleh Lurah; ',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText: 'Foto copy surat kematian Orang Tua (bapak / ibu);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Foto copy Kartu Keluarga (KK) dan kartu Tanda Penduduk (KTP);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy Kartu Tanda Penduduk (KTP) 2 (dua) orang saksi;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Surat pernyataan keaslian tanda tangan ahli waris dan ditandatangani dihadapan pegawai Kelurahan / Kecamatan diatas materai Rp. 6.000’-‘',
            ),
          ),
        ],
      ),
    );
  }
}
