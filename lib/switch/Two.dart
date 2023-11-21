import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
   bool light0 = true;

  bool isSwitched = false;
  var textValue = 'OFF';
  var Containarcolor = Colors.white;
  var textcolor = Colors.black;

  void toggleSwitch(bool value) {
    if (isSwitched == false || Containarcolor == false ||textcolor==false) {
      setState(() {
        isSwitched = true;
        textValue = ' ON';
        Containarcolor = Color(0xff0F244B);
        textcolor=Colors.white;
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'OFF';
        Containarcolor = Colors.white;
         textcolor=Colors.black;
        
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200,
    width: 160,
    decoration: BoxDecoration(
        color: Containarcolor,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.speaker_phone_outlined,
            size: 60,
            color: textcolor,
          ),
          Text('Smart\n'
              'Speakers',style: TextStyle(color: textcolor,fontSize: 16),),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textValue,
                style: TextStyle(fontSize: 16, color: textcolor),
              ),
              Switch(
                 activeTrackColor: Colors.blueGrey[200],
                value: isSwitched, onChanged: toggleSwitch),
            ],
          )
        ],
      ),
    ),
  );
  }
}