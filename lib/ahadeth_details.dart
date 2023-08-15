import 'package:flutter/material.dart';
import 'package:islamii/models/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(args.content[index]),
              ),
            );
          },
          itemCount: args.content.length,
        ),
      ),
    );
  }
}
