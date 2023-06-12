import 'package:flutter/material.dart';
import 'package:welcome/ui/paymenttrackingmessage.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Create Customed Invoice",
      //     style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onthegobg.png"),
            fit: BoxFit.none,
          ),
          color:
              Color(0xFF01497C), // Replace with your desired background color
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/phone1.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Design and personalize your invoices \nto reflect your brand's identity",
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
                        builder: (context) => const FinalMessage(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height *
                        0.06, // 20% of the screen height
                    width: MediaQuery.of(context).size.width *
                        0.9, // 80% of the screen width
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
