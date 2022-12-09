import 'package:flutter/material.dart';
import 'package:intermeidiate/utils/constant.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String subStatus = 'Active';
    String memberSince = 'June 10,2022';
    String subType = 'Monthly';
    String subCost = '\$1USD/Month';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text('Account Details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: color1,
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Santaosh Mehta',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          const Text(
            'santaosh@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            height: 3,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Subscriptioin status',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(subStatus)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Member since',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(memberSince)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Subscriptioin type',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(subType)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Subscriptioin cost',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(subCost)
                  ],
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(color1)),
                  child: const Text(
                    'Change subscription',
                    // style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel subscription',
                    style: TextStyle(color: color1),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
