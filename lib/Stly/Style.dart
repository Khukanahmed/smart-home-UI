import 'package:flutter/material.dart';

TextStyle head10text() {
  return TextStyle(fontSize: 20, fontWeight: FontWeight.w800);
}

TextStyle head12text() {
  return TextStyle(fontSize: 18, fontWeight: FontWeight.w800);
}

Column Iconcontinar(Ontap, text, image) {
  return Column(children: [
    InkWell(
        onTap: Ontap,
        child: Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(image),
          ),
        )),
    SizedBox(height: 10),
    Text(text)
  ]);
}

