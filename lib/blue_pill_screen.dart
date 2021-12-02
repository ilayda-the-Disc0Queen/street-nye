import 'package:flutter/material.dart';

import 'components/constants.dart';

class BluePillScreen extends StatelessWidget {
  const BluePillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(
              child: Text(
                'You take the blue pill - \nthe story ends, you wake up in your bed and believe whatever you want to believe.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 30.0, color: Constants.matrixGreenColor),
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: Image.asset(
                'assets/images/morpheus_on_the_phone.jpeg',
                fit: BoxFit.fill,
                // height: double.infinity,
                // width: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
