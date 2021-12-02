import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/constants.dart';

class RedPillScreen extends StatelessWidget {
  const RedPillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Welcome to The Matrix',
                style: TextStyle(
                    fontSize: 30.0, color: Constants.matrixGreenColor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                  height: 300,
                  child: Image.asset(
                    'assets/images/neo_bullets.gif',
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Congratulations on making it this far. Rest assured, there is more to come...',
                  style: TextStyle(
                      fontSize: 24.0, color: Constants.matrixGreenColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: const Text(
                  'The Resistance is still going strong - on the 31st of this month we will convene at Headquarters to discuss strategies to bring down The Architect, The Oracle and general machine fuckery. As always be vigilant - Agents are everywhere.',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Constants.matrixGreenColor,
                      height: 1.5),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'The details of the mission are as follows: ',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Constants.matrixGreenColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'The Venue: tbc \nNearest Station: Ipswich or some shit \nDates: 31st - 2nd \ncheck-in: 12 noon \ncheck-out: 11am \nMission objective: TUN UP, TUN UP 🔥🔥🔥🔥 ',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white, height: 2.5),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
