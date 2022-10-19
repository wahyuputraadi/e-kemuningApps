import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class makam extends StatelessWidget {
  const makam({Key? key}) : super(key: key);

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
                'Pesan Baru (Jenazah Baru)',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 1,
              primaryText: 'Mengisi Formulir Permohonan Pemakaman;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Foto copy Kartu Tanda Penduduk (KTP) yang bersangkutan / Jenazah / Ahli Waris;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Surat Kematian dari Puskesmas / Rumah Sakit / Surat Keterangan Kematian dari Rt / Rw / Lurah;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Surat Rekomendasi Izin Pemakaman (Dinas PERA-KP Kota Palembang).',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Perpanjangan',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 9,
              primaryText: 'Mengisi Formulir Permohonan Pemakaman;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 10,
              primaryText: 'Foto copy Kartu Tanda Penduduk (KTP) Ahli Waris;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 11,
              primaryText:
                  'Foto copy Izin sebelumnya dan menunjukkan Izin yang Aslinya;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 12,
              primaryText:
                  'Surat Rekomendasi Izin Pemakaman (Dinas PERA-KP Kota Palembang).',
            ),
          ),
        ],
      ),
    );
  }
}
