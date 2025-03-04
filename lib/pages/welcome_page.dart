import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Display Image.
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/app_logo.png", 
                scale: 4
                ),
            ),
            const SizedBox(height: 43),
            Image.asset("assets/images/coffee_image.png"),
            const Text(
              "Find your favorite",
              style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600
              )
             ),
             const Text(
              "Coffee Taste!",
              style:TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
              )
             ),
             const SizedBox(height: 6),
              const Text(
                "We’re coffee shop, beer and wine bar,\n& event space for performing arts",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 36),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color(0xff55433C),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(flex: 2),
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xffA97C37),
                          child: Icon(
                            Icons.arrow_forward,
                            color:  Colors.white,
                            ),
                        )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
