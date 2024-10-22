import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../generated/l10n.dart';
import '../widgets/faq_exapntion_tile.dart';
import 'help_and_support.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(S.of(context).FAQ, style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF284B63),
      ),
      body: ListView(
        children: [
          FAQExpantionTileextends(
            title: '${S.of(context).q1}',
            body: ' ${S.of(context).a_q1}\n\n'
                '\t${S.of(context).a1_q1}\n\n'
                '\t${S.of(context).a2_q1}\n\n'
                '\t${S.of(context).a3_q1}\n\n'
                '\t${S.of(context).a4_q1}\n\n'
                '\t${S.of(context).a5_q1}',
          ),
          FAQExpantionTileextends(
              title: S.of(context).q2, body: S.of(context).a1_q2),
          FAQExpantionTileextends(
            title: S.of(context).q3,
            body: S.of(context).a1_q3,
          ),
          FAQExpantionTileextends(
            title: S.of(context).q4,
            body: S.of(context).a1_q4,
          ),
          FAQExpantionTileextends(
              title: S.of(context).q5, body: S.of(context).a1_q5),
          FAQExpantionTileextends(
            title: S.of(context).q6,
            body: S.of(context).a1_q6,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              S.of(context).DidntFindAnswer,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Color(0xFF284B63),
                ),
                onPressed: () {
                  Get.off(() => HelpAndSupportPage());
                },
                child: Text(
                  S.of(context).ContactUs,
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
