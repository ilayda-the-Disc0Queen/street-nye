import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  height: 500,
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
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: InkWell(
                    child: const Text(
                      'View the yard',
                      style: TextStyle(color: Constants.matrixGreenColor),
                    ),
                    onTap: () => launch(
                        'https://www.airbnb.co.uk/rooms/51759586?source_impression_id=p3_1638741560_CdGrLRQJ%2BDiKWmeB&guests=1&adults=1')),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Nearest Stations: Southend Central and Southend Victoria \n\nDates: 31st - 2nd \n\ncheck-in: 4pm - 9pm \n\ncheck-out: 10:30am \n\nMission objective: TUN UP, TUN UP 🔥🔥🔥🔥 \n\nSee u there homies\n',
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.white, height: 2.5),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/images/neo_is_ready_to_fight.gif',
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _onOpen(LinkableElement link) async {
  if (await canLaunch(link.url)) {
    await launch(link.url);
  } else {
    throw 'Could not launch $link';
  }
}
