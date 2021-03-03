import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zipwallet/shared/shared.dart';
import 'package:zipwallet/shared/theme.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      title: 'ZipWallet',
      initialRoute: Routerz.initialRoute,
      onGenerateRoute: Routerz.generateRoute,
    );
  }
}
