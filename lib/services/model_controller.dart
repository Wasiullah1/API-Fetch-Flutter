import 'package:api_practice/network_helper/networking.dart';

Future modelController() async {
  Map<String,dynamic> map = <String,dynamic>{};
  map = await NetworkHelper.zeroParameterApi(apiEndPoint: "https://jsonplaceholder.typicode.com/todos/1");
  return map;
}