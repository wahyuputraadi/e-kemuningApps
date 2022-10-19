import 'package:e_kemuning/Models/nonperizinan.dart';
import 'package:e_kemuning/Models/perizinan.dart';
import 'package:e_kemuning/Pages/nonperijinan_domisil_usaha.dart';
import 'package:e_kemuning/Pages/nonperijinan_pencatatan_surat_tanah.dart';
import 'package:e_kemuning/Pages/nonperijinan_surat_keterangan_bersih_diri.dart';

import 'package:e_kemuning/Themes/theme.dart';
import 'package:flutter/material.dart';

class CardNonPerizinanbersih extends StatelessWidget {
  final NonPerizinan nonperizinan;

  const CardNonPerizinanbersih(
    this.nonperizinan, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2,
        right: 2,
      ),
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // if you need this
          ),
          elevation: 0,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const bersihdiri(),
                ),
              );
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nonperizinan.primaryText,
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
