import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zipwallet/screens/nav_drawer.dart';
import 'package:zipwallet/shared/app_colors.dart';

class Bitcoin extends StatefulWidget {
  static const routeName = '/bitcoin';
  _BitcoinState createState() => _BitcoinState();
}

int _page = 0;
GlobalKey _globalnavKey = GlobalKey();

class _BitcoinState extends State<Bitcoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueStart,
      appBar: AppBar(
        backgroundColor: blueMain,
        elevation: 0,
        leading: Padding(
            padding: const EdgeInsets.all(18.0),
            child: GestureDetector(
              child: SvgPicture.asset('assets/images/menu.svg'),
              /* 
              To be Revisited at a later time- Navigation Drawer
               */
              onTap: () {
                Fluttertoast.showToast(
                  msg: "A toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                );
              },
            )),
        title: Text('ZipWallet', style: TextStyle(color: appBarItemsColor)),
        actions: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 10),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: SvgPicture.asset('assets/images/bell.svg'),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: bellRedDot,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: blueMain,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 30, left: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [yellowStart, yellowEnd],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Current balance',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Text(
                                'Ksh',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '\$32.026',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w500),
                              ),
                              Transform(
                                transform: Matrix4.identity()..scale(0.9),
                                alignment: Alignment.bottomRight,
                                child: Chip(
                                  backgroundColor: chipColorGreen,
                                  labelPadding:
                                      EdgeInsets.symmetric(horizontal: 12),
                                  label: Text(
                                    '+ 3.5%',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '0.2432232 BTC',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: walletAddButtomColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 7.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: 15,
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      color: yellowSecondContainer,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: <Widget>[
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          //SvgPicture.asset('assets/images/send.svg'),
                          Container(
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //SvgPicture.asset('assets/images/receive.svg'),
                          Container(
                            child: Text(
                              'Swap Money',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Text("Refer and Earn",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Your History',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 15),

                /*
                * Code to get the transaction history from the model
                *
                *
                * */








                /*GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'wallet');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        yellowStartBitcoin,
                                        yellowEndBitcoin
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 7.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 8, left: 8),
                                  child: Transform(
                                    transform: Matrix4.identity()..scale(0.7),
                                    child: SvgPicture.asset(
                                        'assets/images/bitcoin-logo.svg'),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Bitcoin',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: chipColorGreen,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: Text(
                                      '+ 3.5%',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                '3.210',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '\$ 45.000',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: lightGreySecondContainer,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: CustomPaint(
                    painter: ChartLinePainter(),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      purpleStartEthereum,
                                      purpleEndEthereum
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 7.0,
                                    spreadRadius: 1.0,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 8, left: 8),
                                child: Transform(
                                  transform: Matrix4.identity()..scale(0.7),
                                  child: SvgPicture.asset(
                                      'assets/images/ethereum-logo.svg'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Ethereum',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: chipColorRed,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  child: Text(
                                    '- 1.5%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '2.210',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '\$ 25.000',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),*/
             /*   Container(
                  height: 5,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: lightGreySecondContainer,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),*/
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _globalnavKey,
        height: 50,
        color: Colors.indigo.shade900,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        items:<Widget> [
          Icon(Icons.account_balance_outlined, size: 25,color: Colors.green,),
          Icon(Icons.money_off_csred_outlined, size: 25,color: Colors.green,),
          Icon(Icons.info_outline, size: 25,color: Colors.green,),
          Icon(Icons.swap_horizontal_circle_outlined, size: 25,color: Colors.green,),
          Icon(Icons.qr_code, size: 25,color: Colors.green,),
        ],
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        onTap: (index) {
          setState(() {
            _page = index;
            debugPrint("current index is{$index}");
          });
        },
      ),
    );
  }
}

class ChartLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintLine = Paint()
      ..color = yellowChartLine
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    var paintCircle = Paint()..color = yellowChartLine;

    var paintCircleStroke = Paint()
      ..color = Colors.black12
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    var path = Path()
      ..moveTo(0, size.height * 0.7)
      ..quadraticBezierTo(
          size.width * 0.09, 0, size.width * 0.2, size.height * 0.7)
      ..quadraticBezierTo(
          size.width * 0.3, 90, size.width * 0.4, size.height * 0.8)
      ..quadraticBezierTo(
          size.width * 0.5, 50, size.width * 0.6, size.height * 0.8)
      ..quadraticBezierTo(
          size.width * 0.75, 85, size.width * 0.8, size.height * 0.6)
      ..quadraticBezierTo(
          size.width * 0.85, 0, size.width * 0.95, size.height * 0.25)
      ..quadraticBezierTo(
          size.width * 0.99, 30, size.width * 1, size.height * 0.20);

    canvas.drawPath(path, paintLine);
    canvas.drawCircle(
        Offset(size.width * 0.6, size.height * 0.79), 2.0, paintCircle);
    canvas.drawCircle(
        Offset(size.width * 0.6, size.height * 0.79), 2.0, paintCircleStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
