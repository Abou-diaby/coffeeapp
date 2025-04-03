import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipRect(
            child: Align(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.4,
              child: Image.asset("assets/images/coffee_image.png"),
            ),
          ),
          SingleChildScrollView(
            // padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: ClipRect(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/user_image.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        child: GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset("assets/icons/menu.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "Hi,",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 40,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        "William",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
