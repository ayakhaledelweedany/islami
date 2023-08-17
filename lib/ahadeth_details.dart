import 'package:flutter/material.dart';
import 'package:islamii/models/hadeth_model.dart';
import 'package:islamii/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getMainBackground()),
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
