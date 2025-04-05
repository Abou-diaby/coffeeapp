import 'package:coffeeapp/components/bottom_navigation_bar.dart';
import 'package:coffeeapp/components/filter_list.dart';
import 'package:coffeeapp/components/product_list.dart';
import 'package:coffeeapp/components/profil_icon.dart';
import 'package:coffeeapp/components/search_field.dart';
import 'package:flutter/material.dart';
// import '../components/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarExample(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 0.37,
                    child: Image.asset("assets/images/coffee_image.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ProfilIcon(),
                        ),
                        _menu(context),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: _userWelcome(context, "Teddy"),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SearchField(controller: _controller),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            FilterList(
              filters: [
                {"name": "Coffee", "icon": "coffee_icon.png"},
                {"name": "Beer", "icon": "beer_icon.png"},
                {"name": "Wine Bar", "icon": "wine_icon.png"},
                {"name": "Events", "icon": "events_icon.png"},
              ],
            ),
            const SizedBox(height: 57),
            Column(
              children: [
                ProductList(contentDirection: "column"),
                ProductList(contentDirection: "row"),
                ProductList(contentDirection: "row"),
                ProductList(contentDirection: "row"),
                ProductList(contentDirection: "row"),
                ProductList(contentDirection: "row"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menu(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(right: 20),
      iconSize: 44,
      onPressed: () {},
      icon: Image.asset("assets/icons/menu.png", height: 44, width: 44),
    );
  }

  Widget _userWelcome(BuildContext context, String userName) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: "Hi, ",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w200,
          color: Colors.black,
          fontFamily: "Gilroy",
        ),
        children: <TextSpan>[
          TextSpan(
            text: userName,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
