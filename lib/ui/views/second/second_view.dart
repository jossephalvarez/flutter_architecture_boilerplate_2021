import 'package:provider_architecture_boilerplate/ui/views/second/second_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
