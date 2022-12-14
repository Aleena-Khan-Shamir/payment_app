import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intermeidiate/screens/fourth_sc.dart';

import '../utils/constant.dart';
import '../widgets/default_button.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  String title = 'Standard yearly';
  String subtitle = 'Billed monthly';
  int price = 1;
  int? isSlected;
  // bool colors = true;
  // bool colours = true;

  @override
  void initState() {
    super.initState();
    // colors = colors;
    // colours = colours;
  }

  int? selectedIndex;
  //int index = 0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double screenWidth = MediaQuery.of(context).size.width;
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
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: 2,
            //     itemBuilder: (_, index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Card(
            //           color: colours ? color1 : Colors.white,
            //           shape: RoundedRectangleBorder(
            //               side: const BorderSide(color: Colors.white),
            //               borderRadius: BorderRadius.circular(10)),
            //           child: ListTile(
            //             // tileColor: selectedIndex == index
            //             //     ? Colors.white
            //             //     : Colors.transparent,
            //             onTap: () {
            //               setState(() {
            //                 colours = !colours;
            //                 selectedIndex = index;
            //               });
            //             },
            //             leading: Padding(
            //               padding: const EdgeInsets.only(top: 5),
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     border: Border.all(
            //                       width: 2,
            //                       color: colours ? Colors.white : color1,
            //                     ),
            //                     borderRadius: BorderRadius.circular(100)),
            //                 child: Icon(
            //                   isSlected ? Icons.circle : Icons.check,
            //                   size: 25,
            //                   color: color1,
            //                 ),
            //               ),
            //             ),
            //             title: Text(
            //               title,
            //               style:
            //                   TextStyle(color: colours ? Colors.white : color1),
            //             ),
            //             subtitle: Text(
            //               subtitle,
            //               style:
            //                   TextStyle(color: colours ? Colors.white : color1),
            //             ),
            //             trailing: Column(
            //               children: [
            //                 Container(
            //                   //margin: EdgeInsets.all(0.0),
            //                   color: colours ? Colors.white : color1,
            //                   child: const Text(' Most Popular '),
            //                 ),
            //                 Wrap(
            //                   spacing: 5,
            //                   children: [
            //                     Text(
            //                       '\$$price',
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.w500,
            //                           fontSize: 23,
            //                           color: colours ? Colors.white : color1),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(top: 5),
            //                       child: Text(
            //                         'USD',
            //                         style: TextStyle(
            //                             color: colours ? Colors.white : color1),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       );
            //     }),
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                      color: isSlected == 1 ? Colors.white : color1,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: isSlected == 1 ? color1 : Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            isSlected = 1;
                            log("isSlected");
                          });
                        },
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: isSlected == 1 ? color1 : Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              isSlected == 1 ? Icons.check : Icons.circle,
                              size: 25,
                              color: isSlected == 1 ? color1 : Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          title,
                          style: TextStyle(
                              color: isSlected == 1 ? color1 : Colors.white),
                        ),
                        subtitle: Text(
                          subtitle,
                          style: TextStyle(
                              color: isSlected == 1 ? color1 : Colors.white),
                        ),
                        trailing: Wrap(
                          spacing: 5,
                          children: [
                            Text(
                              '\$$price',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color:
                                      isSlected == 1 ? color1 : Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'USD',
                                style: TextStyle(
                                    color: isSlected == "1"
                                        ? color1
                                        : Colors.white),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      color: isSlected == 2 ? Colors.white : color1,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: isSlected == 2 ? color1 : Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        // selected: isSlected,
                        onTap: () {
                          setState(() {
                            isSlected = 2;
                            log("isSlected");
                          });
                        },
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: isSlected == 2 ? color1 : Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              isSlected == 2 ? Icons.check : Icons.circle,
                              size: 25,
                              color: isSlected == 2 ? color1 : Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          title,
                          style: TextStyle(
                              color: isSlected == 2 ? color1 : Colors.white),
                        ),
                        subtitle: Text(
                          subtitle,
                          style: TextStyle(
                              color: isSlected == 2 ? color1 : Colors.white),
                        ),
                        trailing: Column(
                          children: [
                            Container(
                              //margin: EdgeInsets.all(0.0),
                              color: isSlected == 2 ? color1 : Colors.white,
                              child: const Text(' Most Popular '),
                            ),
                            Wrap(
                              spacing: 5,
                              children: [
                                Text(
                                  '\$$price',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 23,
                                      color: isSlected == 2
                                          ? color1
                                          : Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    'USD',
                                    style: TextStyle(
                                        color: isSlected == 2
                                            ? color1
                                            : Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
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
