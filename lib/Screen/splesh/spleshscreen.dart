import 'package:flutter/material.dart';

import '../../Navigationbar.dart';

class Splesh_screen extends StatefulWidget {
  const Splesh_screen({super.key});

  @override
  State<Splesh_screen> createState() => _Splesh_screenState();
}

class _Splesh_screenState extends State<Splesh_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('asset/461.jpg', fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 10,
                    child: Text(
                      'New Apps',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Easy Controller \n'
                          'Your Home',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Bottom_NavigationBar()));
                              },
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white54),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.white))))),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),

      // body: Container(
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage(
      //     'asset/461.jpg',
      //   ),fit: BoxFit.cover
      //   ),
      //   ),

      // ),
    );
  }
}
