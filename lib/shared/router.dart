import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zipwallet/screens/bitcoin.dart';
import 'package:zipwallet/screens/login.dart';
import 'package:zipwallet/screens/my_offers.dart';
import 'package:zipwallet/screens/my_trades.dart';
import 'package:zipwallet/screens/swap_money.dart';
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
      case 'BTC':
        return MaterialPageRoute(builder: (_)=>MyOffers());
      case 'swap':
        return MaterialPageRoute(builder: (_)=>SwapMoney());
      case 'mytrades':
        return MaterialPageRoute(builder: (_)=>MyTrades());
      case 'offer':
        return MaterialPageRoute(builder: (_)=>MyOffers());
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
