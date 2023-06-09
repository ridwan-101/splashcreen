import 'package:flutter/material.dart';

class FinalMessage extends StatefulWidget {
  const FinalMessage({super.key});

  @override
  State<FinalMessage> createState() => _FinalMessageState();
}

class _FinalMessageState extends State<FinalMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Effortless Payment Tracking",
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
              image: AssetImage("assets/images/person2.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Simplify your invoicing process with OnDgo,\nthe ultimate invoice generating app designed\nto save you time and streamline your business.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: GestureDetector(
                onTap: () {
                  /// route to DashBoard
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
