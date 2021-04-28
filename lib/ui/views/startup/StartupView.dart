import 'package:flutter/material.dart';
import 'package:provider_architecture_boilerplate/ui/views/startup/StartupViewModel.dart';
import 'package:stacked/stacked.dart';

// UI CODE ONLY HERE!!

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}