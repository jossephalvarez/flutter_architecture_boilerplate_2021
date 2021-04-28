import 'package:flutter/material.dart';
import 'package:provider_architecture_boilerplate/di/Locator.dart';
import 'package:stacked/stacked.dart';
import 'SecondViewModel.dart';

// UI CODE ONLY HERE!!
class SecondView extends StatelessWidget {

  const SecondView({Key key}) : super(key: key);
  // SecondView() : super(getIt());

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
            body: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(child: Text("Clear List"), onPressed: () => model.onClearPressed()),
                      RaisedButton(child: Text("Get List"), onPressed: () => model.onGetPressed()),
                    ],
                  ),
                  Expanded(
                    child: model.pois.isEmpty
                        ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Opss!, sorry but we don't have any element on view, try to get them from network",
                            textAlign: TextAlign.center,
                          ),
                        ))
                        : ListView.builder(
                      shrinkWrap: true,
                      itemCount: model.pois.length,
                      itemBuilder: (ctx, index) {
                        final poi = model.pois[index];
                        return ListTile(
                          leading: CircleAvatar(child: Text(poi.id)),
                          title: Text(poi.title),
                          subtitle: Text("Lat: ${poi.lat}, Lng: ${poi.lng}"),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: model.onGetPressed,
            label: const Text('Get List'),
            icon: const Icon(Icons.arrow_circle_down),
            backgroundColor: Colors.cyan,
          ),
        ),
        viewModelBuilder: ()=> SecondViewModel(getIt())
    );
  }
}
