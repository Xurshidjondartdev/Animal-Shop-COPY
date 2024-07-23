import "package:flutter/cupertino.dart";

Text text(String str, double size, FontWeight fontweight,Color color)
{
  return Text(str,
  style: TextStyle(
    fontFamily: "Poppins",
    fontWeight: fontweight,
    fontSize: size,
    color: color,
    ),
  );
}
