import 'package:flutter/material.dart';

import 'components/constants.dart';

class BluePillScreen extends StatelessWidget {
  const BluePillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'You take the blue pill - \nthe story ends, you wake up in your bed and believe whatever you want to believe.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 30.0, color: Constants.matrixGreenColor),
                  ),
                ),
              ),
              const SizedBox(height: 80.0),
              Center(
                child: Image.asset(
                  'assets/images/morpheus_on_the_phone.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 80.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'We expect The Agents to be in touch.',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 30.0, color: Constants.matrixGreenColor),
                ),
              ),
              const SizedBox(height: 80.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'Good luck.',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 30.0, color: Constants.matrixGreenColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
