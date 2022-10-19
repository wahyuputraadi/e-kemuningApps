import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class nonpencatatansurattanah extends StatelessWidget {
  const nonpencatatansurattanah({Key? key}) : super(key: key);

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Surat Pengakuan Hak (SPH)',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 1,
              primaryText:
                  'Dasar Surat Tanah / atas Hak Tanah Usaha (yang belum teregister surat tanah di kelurahan dan kecamatan);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText: 'Foto copy Kartu Tanda Penduduk (KTP);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Foto copy pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText: 'Foto copy Kartu Keluarga;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Surat permohonan yang bersangkutan bermaterai Rp. 6.000’-;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Surat pernyataan tanah yang tidak sengketa dan diketahui Rt setempat bermaterai Rp. 6.000’-;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText: 'Surat Pengantar RT.',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Untuk Tanah Waris dilampirkan Surat Pernyataan Waris dan Kuasa Waris.',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Surat Pengoperan Hak Tanah Usaha',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy Kartu Keluarga dan Kartu Tanda Penduduk (KTP) penjual dan pembeli hak tanah usaha;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Untuk tanah waris penjual hak tanah usaha harus melampirkan surat pernyataan waris dan kuasa waris;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Dasar surat tanah yang telah teregister di kelurahan dan kecamatan, notaries PPAT (belum tersertifikasi SHM);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Surat permohonan penjual hak tanah usaha bermaterai Rp. 6.000’-;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Surat pernyataan tanah yang tidak dalam sengketa dan diketahui RT setempat bermaterai Rp. 6.000.’;',
            ),
          ),
        ],
      ),
    );
  }
}
