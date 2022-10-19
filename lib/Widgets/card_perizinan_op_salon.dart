import 'package:e_kemuning/Models/perizinan.dart';
import 'package:e_kemuning/Pages/nonperizinan_mendirikan_bangunan.dart';
import 'package:e_kemuning/Pages/perijinan_operasional_salon.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:flutter/material.dart';

class CardPerizinanopsalon extends StatelessWidget {
  final Perizinan perizinan;

  const CardPerizinanopsalon(
    this.perizinan, {
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
                  builder: (context) => const opsalon(),
                ),
              );
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          perizinan.primaryText,
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        Text(
                          perizinan.secondText,
                          style: greyTextStyle.copyWith(fontSize: 12),
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
