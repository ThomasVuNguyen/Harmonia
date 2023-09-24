import 'package:flutter/material.dart';
import 'package:managestate/components/theme_provider.dart';
import 'package:provider/provider.dart';

class BodyNumber extends StatefulWidget {
  const BodyNumber({super.key});

  @override
  State<BodyNumber> createState() => _BodyNumberState();
}

class _BodyNumberState extends State<BodyNumber> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => CounterViewModel(),
      child: Consumer<CounterViewModel>(builder: (context, viewModel, child){
        return Center(child: Text('${viewModel.counter}'));
      },),
    );
  }
}
