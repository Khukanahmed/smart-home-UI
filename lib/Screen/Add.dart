import 'package:flutter/material.dart';
import 'package:tasks/Stly/Style.dart';
import 'package:tasks/switch/Four.dart';
import 'package:tasks/switch/Three.dart';
import 'package:tasks/switch/one.dart';

import '../switch/Two.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  bool light0 = true;

  bool isSwitched = false;
  var textValue = 'OFF';
  var Containarcolor = Colors.white;
  var textcolor = Colors.black;

  void toggleSwitch(bool value) {
    if (isSwitched == false || Containarcolor == false) {
      setState(() {
        isSwitched = true;
        textValue = ' ON';
        Containarcolor = Colors.blue;
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'OFF';
        Containarcolor = Colors.white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 234, 239),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi KHUKAN !',
                  style: head10text(),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('asset/job pic.jpg'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: Text(
                'Rooms',
                style: head12text(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Iconcontinar(() {}, 'Living Room', 'asset/sofa.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Iconcontinar(() {}, 'Bedroom', 'asset/bedroom.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Iconcontinar(() {}, 'Kitchen', 'asset/kitchen.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Iconcontinar(() {}, 'Bathroom', 'asset/bathroom.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Iconcontinar(() {}, 'Dining', 'asset/dining-table.png')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bedroom',
                    style: head12text(),
                  ),
                  Text('( 4 Devices Connected)')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                One(),
                SizedBox(
                  width: 15,
                ),
                Two()
              ],
            ),
            SizedBox(
              height: 18,
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Three(),
                SizedBox(
                  width: 15,
                ),
                Four()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
