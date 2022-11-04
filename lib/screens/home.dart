import 'package:api_practice/model/practice_model.dart';
import 'package:api_practice/services/model_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modelObj = Provider.of<MyModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: FutureBuilder(
          future: modelController(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.connectionState == ConnectionState.none) {
              return const Center(child: CircularProgressIndicator());
            }
            if(snapshot.hasData) {
              dynamic jsonFromApi = snapshot.data;
              modelObj.fromJson(jsonFromApi);
              Map<String,dynamic> items = modelObj.toJson();
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("UserId: ${items["user_id"]}"),
                    Text("Id: ${items["id"]}"),
                    Text("Title: ${items["title"]}"),
                    Text("completed: ${items["completed"]}"),
                  ],
                ),
              );
            }
            else {
              return const Center(child: Text("There isn't any data"));
            }
          }),
    );
  }
}
