import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class pariwisata extends StatelessWidget {
  const pariwisata({Key? key}) : super(key: key);

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
              primaryText: 'Permohonan Izin Usaha Pariwisata (SIUK);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
                id: 2, primaryText: 'Foto copy Kartu Tanda Penduduk (KTP);'),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText: 'Foto copy Izin Mendirikan Bangunan (IMB);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText: 'Foto copy Nomor Pokok Wajib Pajak (NPWP);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 5,
              primaryText:
                  'Salinan Akte pendirian perusahaan (bagi yang berbadan hukum);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 6,
              primaryText:
                  'Rekomendasi dari Kepolisian untuk Izin Hiburan dan Rekreasi;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 7,
              primaryText: 'Struktur Organisasi Managemen Personil;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 8,
              primaryText:
                  'Foto copy Persetujuan dari Tetangga (kanan, kiri, depan, dan belakang);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 9,
              primaryText: 'Denah lokasi bangunan;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(id: 10, primaryText: 'Foto copy sertifikat tanah;'),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 11,
              primaryText:
                  'Foto copy pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir.',
            ),
          ),
        ],
      ),
    );
  }
}
