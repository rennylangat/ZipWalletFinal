import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zipwallet/screens/bitcoin.dart';
import 'package:zipwallet/screens/login.dart';
import 'package:zipwallet/screens/wallet.dart';

class Routerz {
  static String initialRoute = 'login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(builder: (_) => Login());
      case 'bitcoin':
        return MaterialPageRoute(builder: (_) => Bitcoin());
      case 'wallet':
        return MaterialPageRoute(builder: (_) => Wallet());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
