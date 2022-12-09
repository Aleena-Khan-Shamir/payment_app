import 'package:flutter/material.dart';
import 'package:intermeidiate/screens/three_sc.dart';
import 'package:intermeidiate/widgets/default_button.dart';

import '../utils/constant.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: color1,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.clear)),
        ),
        Center(
          child: Container(
            height: screenHeight / 5,
            width: screenWidth / 2.9,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0))
                ],
                image: DecorationImage(
                  image: AssetImage('assets/app_icon_white_bg.png'),
                )),
            child: Padding(
              padding: EdgeInsets.only(
                  top: screenHeight / 6.6, left: screenWidth / 17),
              child: Row(
                children: [
                  Text(
                    'Next',
                    style: TextStyle(color: color1),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Expense',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight / 4.9,
          child: const Center(
            child: Text(
              'Free trail expired',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        listText2(context),
        Flexible(
          flex: 1,
          child: Center(
            child: DefaultButton(
                height: 50,
                width: 230,
                txt: 'View subscription page',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ThirdScreen()));
                }),
          ),
        )
      ]),
    );
  }

  Widget listText2(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Column(
        children: [
          RichText(
              text: const TextSpan(
            text:
                'Your free trail has ended. Subscribe in order to continue using our services.',
          )),
          const SizedBox(height: 20),
          RichText(
              text: const TextSpan(
                  text:
                      'Otherwise, you are allowed one last grace period of 7 days before losing complete access to the app and the information stored within.'))
        ],
      ),
    ));
  }
}
