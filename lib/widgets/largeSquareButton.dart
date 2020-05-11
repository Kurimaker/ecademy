import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Skapar stora knappar som navigerar till andra sidor, de har text och en bild samt en färg
class LargeSquareButton extends StatelessWidget {
  final String name; // Namnet på sidan som knappen kommer skicka en till
  final String icon; // Ikonen som visas på knappen
  final iconIsSvg;
  final Color color; // Knappens färg
  final onTap; // Sidan som man navigeras till
  final onLongPress; // Detta är frivilligt


  LargeSquareButton(
      {this.color, this.icon, this.name, this.onTap, this.iconIsSvg, this.onLongPress});


  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height*0.26;
    final double width = MediaQuery.of(context).size.width*0.45;

    if (onLongPress == null) {
      void onLongPress() {}
    }

    if (onTap == null) {
      void onTap() {}
    }

    Container iconPic() {
      if (iconIsSvg == null || iconIsSvg == false) {
        return Container(
          child: Image.asset(
            icon,
            width: width/2,
            height: height/2,
          ),
        );
      } else {
        return Container(
          child: SvgPicture.asset(
            icon,
            width: width/2,
            height: height/2,
          ),
        );
      }
    }

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: SizedBox(
        height: height,
        width: width,
        child: FractionallySizedBox(
          heightFactor: 0.85,
          widthFactor: 0.85,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 7.0, //extend the shadow
                    offset: Offset(
                      15.0, // Move to right 10  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontFamily: "DMSans"),
                  ),
                  iconPic()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
