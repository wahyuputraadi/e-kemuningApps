import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class nonPerizinandomisiliusaha extends StatelessWidget {
  const nonPerizinandomisiliusaha({Key? key}) : super(key: key);

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
                  'Foto copy Kartu Tanda Penduduk (KTP) pemilik / penanggung jawab perusahaan ',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Foto copy Akte Pendirian Perusahaan (Perorangan / CV / PT / Koperasi / Badan Usaha lainnya)',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Foto copy bukti pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir.-) bahwa tanah dan bangunan diatasnya tidak dalam sengketa;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText: '3.	Surat pengantar dari Kelurahan',
            ),
          ),
        ],
      ),
    );
  }
}
