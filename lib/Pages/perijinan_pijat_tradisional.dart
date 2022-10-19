import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class pijat extends StatelessWidget {
  const pijat({Key? key}) : super(key: key);

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
                'Pendaftaran Baru',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: AssetImage('assets/images/bg-primary.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Mengisi formulir yang disediakan (formulir diambil di Dinas Penanaman Modal dan Perizinan Terpadu Kota Palembang), dan ditanda tangan di atas materai Rp. 6000’- dengan dilampiri :',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 1,
              primaryText: 'Foto copy Kartu Tanda Penduduk (KTP) pemohon',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Surat Izin Operasional dari Walikota Palembang melalui Dinas Sosial Kota Palembang;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Surat Pernyataan Tidak Melakukan Tindakan Asusila dan Surat Pernyataan Tidak Menyediakan Minuman Keras dan Obat-obatan Terlarang;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText: 'Daftar Identitas Tenaga Kerja (Pramu Pijat);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 5,
              primaryText: 'Pas photo ukuran 3 x 4 sebanyak 2 (dua) lembar;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 6,
              primaryText:
                  'Foto copy sertifikat / keterangan sebagai pekerja salon kecantikan (khusus Salon Kecantikan);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 7,
              primaryText:
                  'Surat Kuasa apabila pemohon tidak dapat datang langsung untuk pengurusan (foto copy Kartu Tanda Penduduk / KTP yang diberi kuasa dilampirkan);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 8,
              primaryText:
                  '8.	Foto copy pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir.',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pendaftaran Ulang',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 9,
              primaryText: 'Foto copy Kartu Tanda Penduduk (KTP) Pemohon;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 10,
              primaryText:
                  'Daftar Identitas Tenaga Kerja dan pas photo ukuran 3 x 4 cm sebanyak 2 (dua) lembar;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 11,
              primaryText:
                  'Foto copy sertifikat / keterangan pengalaman kerja sebagai Pramu Pijat;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 12,
              primaryText:
                  'Surat Izin Operasional Panti Pijat Tradisional Asli;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 13,
              primaryText:
                  'Surat Kuasa apabila pemohon tidak datang langsung untuk pengurusan (foto copy Kartu Tanda Penduduk / KTP yang diberi kuasa dilampirkan);',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 14,
              primaryText:
                  'Foto copy pembayaran Pajak Bumi dan Bangunan (PBB) tahun terakhir.',
            ),
          ),
        ],
      ),
    );
  }
}
