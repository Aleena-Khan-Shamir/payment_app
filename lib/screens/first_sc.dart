import 'package:flutter/material.dart';
import 'package:intermeidiate/screens/sec_sc.dart';
import 'package:intermeidiate/utils/constant.dart';
import 'package:intermeidiate/widgets/default_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: color1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                icon: const Icon(Icons.clear)),
          ),
          Center(
            child: Container(
              height: screenHeight / 5,
              width: screenWidth / 2.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0))
                  ],
                  image: const DecorationImage(
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
            height: screenHeight / 4.2,
            child: const Center(
              child: Text(
                'Welcome',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          listText(context),
          Flexible(
              flex: 1,
              child: Center(
                  child: DefaultButton(
                height: 50,
                txt: 'Start free trail',
                width: 160,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SecondScreen()));
                },
              ))),
        ],
      ),
    );
  }

  Widget listText(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 40,
          child: Text(
            'We are excited to see you here!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 30,
          child: Text(
            'Try out of these next seven days with:',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 25,
          child: Text(
            'full access:',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 25,
          child: Text(
            'no restrictions:',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 25,
          child: Text(
            'no adds:',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 25,
          child: Text(
            'no credit card requirements:',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ));
  }
}
