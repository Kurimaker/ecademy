import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 15, 17, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.35,),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.height * 0.10,
              child: SvgPicture.asset(
                  "assets/images/svg/logo.svg"
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
            SpinKitFadingCube(
              color: Colors.cyan,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
