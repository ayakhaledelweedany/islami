//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:islamii/buttomSheetLang.dart';
import 'package:provider/provider.dart';

import '../ButtomSheetTheme.dart';
import '../my_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('language'),
          InkWell(
            onTap: () {
              showBottomSheetLanguage(context);
            },
            child: Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(provider.language == 'ar' ? 'Arabic' : 'English'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('themes'),
          InkWell(
            onTap: () {
              showBottomSheetTheme(context);
            },
            child: Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text("light"),
            ),
          )
        ],
      ),
    );
  }

  showBottomSheetLanguage(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return ButtomSheetLang();
      },
    );
  }

  showBottomSheetTheme(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return ButtomSheetTheme();
      },
    );
  }
}
