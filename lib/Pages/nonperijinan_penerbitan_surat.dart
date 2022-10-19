import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class penerbitansurat extends StatelessWidget {
  const penerbitansurat({Key? key}) : super(key: key);

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
              primaryText: 'Surat pengantar dari Ketua Rt dan Ketua Rw; ',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Membawa foto copy Kartu Tanda Penduduk (KTP) dan Kartu Keluarga;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
                id: 3,
                primaryText:
                    'Surat Keterangan dari Kelurahan yang sudah ditanda tangani Lurah;'),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy bukti pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir',
            ),
          ),
        ],
      ),
    );
  }
}
