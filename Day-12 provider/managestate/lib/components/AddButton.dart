import 'package:flutter/material.dart';
import 'package:managestate/components/theme_provider.dart';
import 'package:provider/provider.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});
  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterViewModel(),
      child: Consumer<CounterViewModel>(builder: (context, viewModel, child){
        return FloatingActionButton(
          onPressed: (){
            Provider.of<CounterViewModel>(context, listen: false).incrementCounter;
            setState(() {

            });
          },
          child: Icon(Icons.add),
        );
      },),
    );
  }
}
