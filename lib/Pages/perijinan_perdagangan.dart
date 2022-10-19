import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class dagang extends StatelessWidget {
  const dagang({Key? key}) : super(key: key);

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
                  'Asli surat permohonan ditandatangan diatas materai Rp. 6.000’-;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
                id: 2,
                primaryText:
                    'Foto copy Kartu Tanda Penduduk (KTP) pemilik / penanggung jawab perusahaan;'),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Foto copy Nomor Pokok Wajib Pajak / NPWP (Perorangan / CV / PT / Koperasi / Badan Usaha lainnya);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy Akta pendirian perusahaan (PT / CV / Koperasi / Badan Usaha lainnya) bagi yang berbadan hokum serta pengesahan dari KEMENKUMHAM untuk PT dan didaftarkan di Pengadilan Negeri untuk CV;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 5,
              primaryText:
                  'Foto copy bukti pelunasan Pajak Bumi dan Bangunan (PBB) tahun terakhir;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 6,
              primaryText:
                  'Foto pemilik / Pengurus / Penanggung Jawab perusahaan ukuran 3 x 4 cm (dua) lembar berwarna.',
            ),
          ),
        ],
      ),
    );
  }
}
