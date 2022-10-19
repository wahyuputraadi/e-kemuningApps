import 'package:e_kemuning/Models/nonperizinan.dart';
import 'package:e_kemuning/Models/perizinan.dart';
import 'package:e_kemuning/Pages/nonperizinan_mendirikan_bangunan.dart';
import 'package:e_kemuning/StackHome.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_pencatatan_surat_tanah.dart';
import 'package:e_kemuning/Widgets/card_nonperizinan.dart';
import 'package:e_kemuning/Widgets/card_perizinan_op_salon.dart';
import 'package:flutter/material.dart';
import 'package:e_kemuning/Widgets/card_nonperijinand_domisiliusaha.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_surat_kebersihan_diri.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_penelitian.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_domisili.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_keramaian.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_suratnikah.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_legalisirdok.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_penerbitan_surat.dart';
import 'package:e_kemuning/Widgets/card_nonperijinan_ahliwaris.dart';
import 'package:e_kemuning/Widgets/card_perizinan_op_salon.dart';
import 'package:e_kemuning/Widgets/card_perijinan_pijat_tradisional.dart';
import 'package:e_kemuning/Widgets/card_perijinan_pijat_modern.dart';
import 'package:e_kemuning/Widgets/card_perijinan_pariwisata.dart';
import 'package:e_kemuning/Widgets/card_perijinan_pemasangan_reklame.dart';
import 'package:e_kemuning/Widgets/card_perijinan_pemakaman.dart';
import 'package:e_kemuning/Widgets/card_perijinan_perdagangan.dart';

class PerizinanPage extends StatelessWidget {
  const PerizinanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            foregroundColor: whiteColor,
            elevation: 0,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Perijinan',
                  icon: Icon(Icons.check_circle),
                ),
                Tab(
                  text: 'Non Perijinan',
                  icon: Icon(Icons.approval_rounded),
                ),
                // Tab(
                //   text: 'Permohonan',
                //   icon: Icon(Icons.handshake),
                // ),
              ],
            ),
            title: Text(
              'Surat Perizinan',
              style: whiteTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          body: TabBarView(
            children: [
              Scaffold(
                backgroundColor: lightColor,
                body: ListView(
                  children: [
                    CardPerizinadagang(
                      Perizinan(
                        id: 1,
                        primaryText: 'SURAT IZIN USAHA',
                        secondText: 'Perdagangan',
                      ),
                    ),
                    CardPerizinanpariwisata(
                      Perizinan(
                        id: 2,
                        primaryText: 'SURAT IZIN USAHA',
                        secondText: 'Kepariwisataan',
                      ),
                    ),
                    CardPerizinanpemakaman(
                      Perizinan(
                        id: 3,
                        primaryText: 'SURAT IZIN PEMAKAMAN',
                        secondText: '(TPU)',
                      ),
                    ),
                    CardPerizinapijatmo(
                      Perizinan(
                        id: 4,
                        primaryText: 'SURAT KEPUTUSAN IZIN OPERASIONAL',
                        secondText: 'Pijat Modern',
                      ),
                    ),
                    CardPerizinapijat(
                      Perizinan(
                        id: 5,
                        primaryText: 'SURAT KEPUTUSAN IZIN OPERASIONAL',
                        secondText: 'Pijat Tradisional',
                      ),
                    ),
                    CardPerizinanreklame(
                      Perizinan(
                        id: 6,
                        primaryText: 'SURAT IZIN PEMASANGAN',
                        secondText: 'Reklame',
                      ),
                    ),
                    CardPerizinanopsalon(
                      Perizinan(
                        id: 7,
                        primaryText: 'SURAT KEPUTUSAN IZIN OPERASIONAL',
                        secondText: 'Salon/Pangkas Rambut',
                      ),
                    ),
                  ],
                ),
              ),
              Scaffold(
                backgroundColor: lightColor,
                body: ListView(
                  children: [
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 1,
                        primaryText: 'SURAT IZIN MENDIRIKAN BANGUNAN (IMB)',
                      ),
                    ),
                    CardNonPerizinandomisili(
                      NonPerizinan(
                        id: 2,
                        primaryText: 'SURAT IZIN DOMISILI USAHA',
                      ),
                    ),
                    CardNonPerizinanbersih(
                      NonPerizinan(
                        id: 3,
                        primaryText: 'SURAT KETERANGAN BERSIH DIRI (SKBD)',
                      ),
                    ),
                    CardNonPerizinandomisil(
                      NonPerizinan(
                        id: 4,
                        primaryText: 'SURAT KETERANGAN DOMISILI',
                      ),
                    ),
                    CardNonsuratnikah(
                      NonPerizinan(
                        id: 5,
                        primaryText: 'SURAT DISPENSASI NIKAH',
                      ),
                    ),
                    CardNonPerizinankeramaian(
                      NonPerizinan(
                        id: 6,
                        primaryText: 'SURAT IZIN KERAMAIAN',
                      ),
                    ),
                    CardNonPlegalisirdok(
                      NonPerizinan(
                        id: 7,
                        primaryText: 'PERMOHONAN LEGALISIR DOKUMEN',
                      ),
                    ),
                    CardNonPenelitian(
                      NonPerizinan(
                        id: 8,
                        primaryText: 'SURAT IZIN PENELITIAN',
                      ),
                    ),
                    CardNonPerizinanpencatatansurat(
                      NonPerizinan(
                        id: 9,
                        primaryText: 'PENCATATAN SURAT TANAH',
                      ),
                    ),
                    CardNonpenerbitansurat(
                      NonPerizinan(
                        id: 10,
                        primaryText: 'PENERBITAN SURAT KETERANGAN ',
                      ),
                    ),
                    CardNonahliawaris(
                      NonPerizinan(
                        id: 10,
                        primaryText: 'SURAT KETERANGAN AHLI WARIS',
                      ),
                    ),
                  ],
                ),
              ),
              // Scaffold(
              //   backgroundColor: lightColor,
              //   body: ListView(
              //     children: const [
              //       CardPerizinan(),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
