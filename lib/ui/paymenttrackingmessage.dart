import 'package:flutter/material.dart';
import 'package:welcome/ui/login_signupmessage.dart';

class FinalMessage extends StatefulWidget {
  const FinalMessage({Key? key}) : super(key: key);

  @override
  State<FinalMessage> createState() => _FinalMessageState();
}

class _FinalMessageState extends State<FinalMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Effortless Payment Tracking",
      //     style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onthegobg.png"),
            fit: BoxFit.none,
          ),
          color: Color(0xFF01497C),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/newperson3.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              // const Text(
              //   "Simplify your \ninvoicing process ",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 30,
              //       color: Colors.white),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              const Text(
                " Get real-time updates on invoice statuses, \nincluding pending, paid, and overdue payments",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFF01497C),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
