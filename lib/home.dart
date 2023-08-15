//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/my_theme.dart';
import 'package:islamii/tabs/hadeth_tab.dart';
import 'package:islamii/tabs/quran_tab.dart';
import 'package:islamii/tabs/radio_tab.dart';
import 'package:islamii/tabs/sebha_tab.dart';
import 'package:islamii/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    HadethTab(),
    RadioTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
        Image.asset(
          provider.getMainBackground(),
          //    width: 412,
          //  height: 873,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            //  backgroundColor: Colors.transparent,
            appBar: AppBar(
              //  backgroundColor: Colors.transparent,
              //الظل بتاعه
//centerTitle: true,
              title: Text(AppLocalizations.of(context)!.apptitle),
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (value) {
                  currentIndex = value;
                  setState(() {});
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/quran.png'),
                      size: 30,
                    ),
                    label: 'quran',
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/sebha.png'),
                        size: 30,
                      ),
                      label: 'sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/hadeth.png'),
                        size: 30,
                      ),
                      label: 'hadeth'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/radio.png'),
                        size: 30,
                      ),
                      label: 'radio'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      label: 'settings')
                ]),
            body: tabs[currentIndex]),
      ],
    );
  }
}
