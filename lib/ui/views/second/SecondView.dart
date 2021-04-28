import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'SecondViewModel.dart';

// UI CODE ONLY HERE!!
class SecondView extends StatelessWidget {

  const SecondView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
            body: Center(
              child: Text(model.title),
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
          ),
        ),
        viewModelBuilder: ()=> SecondViewModel()
    );
  }
}
