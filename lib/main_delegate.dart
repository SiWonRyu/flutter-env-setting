import 'package:env_setting/core/env.dart';
import 'package:flutter/material.dart';

void mainDelegate() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Environments'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _BuildText(
                text: 'ENV : ${Environments.env}',
              ),
              _BuildText(
                text: 'AUTH_URL: ${Environments.authUrl}',
              ),
              _BuildText(
                text: 'PRODUCT_URL: ${Environments.productUrl}',
              ),
              _BuildText(
                text: 'WEBSOCKET_URL: ${Environments.websocketUrl}',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BuildText extends StatelessWidget {
  const _BuildText({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
