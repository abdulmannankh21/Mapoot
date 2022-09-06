import 'package:dio/dio.dart';
import 'dart:io';
import 'dataModel.dart';

Future<DataModel> apiCalls() async {
  var dio = Dio();
  try {
    String loginUrl = "https://jsonplaceholder.typicode.com/posts";
    final response = await dio.get(loginUrl,
        options: Options(
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        ));
    print(response);
    return DataModel.fromJson(response.data);
  } catch (e) {
    throw e.toString();
  }
}