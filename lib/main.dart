import 'package:flutter/material.dart';
import 'package:http_request_api_with_provider/home_provider.dart';
import 'package:http_request_api_with_provider/http_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: HomeProvider(),
      ),
    );
  }
}
