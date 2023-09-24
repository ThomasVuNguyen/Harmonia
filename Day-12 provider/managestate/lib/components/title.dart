import 'package:flutter/material.dart';
import 'package:managestate/components/theme_provider.dart';
import 'package:provider/provider.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});
  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterViewModel(),
        child: Consumer<CounterViewModel>(builder: (context, viewModel, child){
          return Text('${viewModel.counter}');
    }));
  }
}
