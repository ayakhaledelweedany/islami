import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int index = 0;
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Positioned(
                  left: 90,
                  child: Image.asset(
                    'assets/images/sebha_head.png',
                    height: 80,
                    width: 80,
                  )),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: RotationTransition(
                    turns: AlwaysStoppedAnimation(90 / 360),
                    child: Image.asset(
                      'assets/images/sebha_body.png',
                      height: 320,
                      width: 232,
                    )),
              ),
            ],
          ),
        ),
        Text('عدد التسبيحات'),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffB7935F), borderRadius: BorderRadius.circular(8)),
          height: 60,
          width: 55,
          child: Center(
              child: Text(
            '$index',
            style: TextStyle(color: Colors.white),
          )),
        ),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffB7935F),
            minimumSize: Size(150, 50),
          ),
          onPressed: () {
            for (int index = 0; index <= 100; index++) {
              if (index <= 33) {
                setState(() {
                  txt = 'سبحان الله';
                });
              } else if (index > 33 && index <= 66) {
                setState(() {
                  txt = 'الحمد الله';
                });
              } else if (index > 66 && index <= 100) {
                setState(() {
                  txt = 'الله اكبر';
                });
              }
            }
            index++;
            RotationTransition(
              turns: AlwaysStoppedAnimation(90 / 360),
            );
          },
          child: Text('$txt'),
        ),
        Spacer()
      ],
    );
  }
}


  

  /* dynamic RotationTransition(turns, Image) {
      AlwaysStoppedAnimation(-80 /360),
    child: Image.asset(
        'assets/images/sebha_body.png',
        height: 320,
        width: 232,);
    setState(() {});*/ //

