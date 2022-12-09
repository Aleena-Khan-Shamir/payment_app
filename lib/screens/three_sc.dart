import 'package:flutter/material.dart';
import 'package:intermeidiate/screens/fourth_sc.dart';

import '../utils/constant.dart';
import '../widgets/default_button.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double screenWidth = MediaQuery.of(context).size.width;
    String title = 'Standard yearly';
    String subtitle = 'Billed monthly';
    int price = 1;
    return Scaffold(
      backgroundColor: color1,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
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
              height: screenHeight / 6,
              child: const Center(
                child: Text(
                  'Membership',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 13,
              child: const Center(
                child: Text(
                  'Choose your plan',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: color1,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.circle,
                        size: 25,
                        color: color1,
                      ),
                    ),
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: Wrap(
                    spacing: 5,
                    children: [
                      Text(
                        '\$$price',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                            color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'USD',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: color1,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.check,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: Column(
                    children: [
                      Container(
                        //margin: EdgeInsets.all(0.0),
                        color: Colors.white,
                        child: const Text(' Most Popular '),
                      ),
                      Wrap(
                        spacing: 5,
                        children: [
                          Text(
                            '\$$price',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 23,
                                color: Colors.white),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'USD',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: RichText(
                  text: const TextSpan(
                      text:
                          'By continuing to our Terms and conditions and Privacy Policy.All subscriptions auto-renew.Pricesare subjectto applicable taxes')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: DefaultButton(
                    height: 50,
                    width: 160,
                    txt: 'Subscribe',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const FourthScreen()));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
