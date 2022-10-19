import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class legalisirdok extends StatelessWidget {
  const legalisirdok({Key? key}) : super(key: key);

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
                  'Pemohon membawa Kartu Keluarga (KK) dan Kartu Tanda Penduduk (KTP) asli besarta foto copynya;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Foto copy bukti pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir.',
            ),
          ),
        ],
      ),
    );
  }
}
