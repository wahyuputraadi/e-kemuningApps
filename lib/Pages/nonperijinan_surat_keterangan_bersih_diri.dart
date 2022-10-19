import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class bersihdiri extends StatelessWidget {
  const bersihdiri({Key? key}) : super(key: key);

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
                id: 1, primaryText: 'Surat pengantar dari Rt setempat;'),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Surat yang dibuat oleh Kantor Kelurahan setempat diantar ke kantor kecamatan;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Surat yang diantar ke kantor Kecamatan untuk diketahui oleh Camat dengan melampirkan : a.	Foto copy Kartu Tanda Penduduk (KTP) b.	Foto copy Kartu Keluarga (KK) c.	Pas photo Ayah (Orang Tua), Ibu (Orang Tua) yang bersangkutan masing-masing 3 (tiga) lembar',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Bukti Pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir.',
            ),
          ),
        ],
      ),
    );
  }
}
