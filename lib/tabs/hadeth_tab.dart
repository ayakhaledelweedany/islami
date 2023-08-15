import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/ahadeth_details.dart';
import 'package:islamii/models/hadeth_model.dart';
import 'package:islamii/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_ic.png"),
        const Divider(
          thickness: 2,
          color: Color(0xffB7935F),
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Divider(
          thickness: 2,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: MyThemeData.primaryColor,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: ahadethData[index]);
                },
                child: Center(
                    child: Text(
                  ahadethData[index].name,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
              );
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  void loadHadeth() async {
    String file = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> ahadeth = file.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      List<String> Lines = ahadeth[i].trim().split("\n");
      String hadethTitle = Lines[0];
      Lines.removeAt(0);
      List<String> hadethContent = Lines;
      ahadethData.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {});
  }
}
