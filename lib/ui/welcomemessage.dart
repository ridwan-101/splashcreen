import 'package:flutter/material.dart';
import 'package:welcome/ui/custominvoicemessage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
        ),
        // centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/person1.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              " 'Simplify your invoicing process with OnDgo,\nthe ultimate invoice generating app designed\nto save you time and streamline your business.',",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
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
                        builder: (context) => const MessagePage()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height *
                      0.06, // 20% of the screen height
                  width: MediaQuery.of(context).size.width *
                      0.9, // 80% of the screen width
                  decoration: BoxDecoration(
                    color: const Color(0xFF01497C),
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
